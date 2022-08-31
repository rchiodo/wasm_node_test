import argparse
import re
import shutil
import os

pre_run_code = """
var CustomSockets = {
    counter: 0,
    sync_api: undefined,
    connection: undefined,
    next_name: function () {
        CustomSockets.counter += 1;
        return `socket${CustomSockets.counter}`;
    },
    mount: function () {
        CustomSockets.sync_api = require('@vscode/sync-api-common/node');
        const { isMainThread, parentPort } = require('node:worker_threads');
        if (isMainThread) {
            throw new Error(`CustomSockets have to be mounted on a worker thread`);
        }
        // Setup our connection
        CustomSockets.connection = new CustomSockets.sync_api.ClientConnection(parentPort);
        // return a root node
        return FS.createNode(null, '/', 49152, 0);
    },
    stream_ops: {
        poll: function (stream) {
            return 0;
        },
        ioctl: function (stream, request, varargs) {
            return 0;
        },
        read: function (stream, buffer, offset, length, position /* ignored */) {
            var result = CustomSockets.connection.sendRequest('read', { length }, new CustomSockets.sync_api.VariableResult("json"));
            if (result.errno !== 0) {
                return -1;
            }
            stringToUTF8Array(result.data.value, buffer, offset, length);
            return result.data.value.length;
        },
        write: function (stream, buffer, offset, length, position /* ignored */) {
            var str = UTF8ArrayToString(buffer, offset, length);
            var result = CustomSockets.connection.sendRequest('write', { str }, new CustomSockets.sync_api.VariableResult("json"));
            if (result.errno !== 0) {
                return -1;
            }
            return length;
        },
        close: function (stream) {
            CustomSockets.connection.sendRequest('close', {}, new CustomSockets.sync_api.VariableResult("json"));
            return 0;
        }
    }
}

function create_custom_socket() {
    var name = CustomSockets.next_name();
    var node = FS.createNode(CustomSockets.root, name, 49152, 0)
    var sock = {};
    var stream = FS.createStream({ path: name, node: node, flags: 2, seekable: false, stream_ops: CustomSockets.stream_ops })
    sock.stream = stream;
    node.sock = sock;
    return sock;
}

function get_socket_from_fd(fd) {
    var stream = FS.getStream(fd)
    return stream.node.sock;
}
"""
syscall_bind = """
function ___syscall_bind(fd, addr, addrlen) {
    // Binding address to the file descriptor
    var info = getSocketAddress(addr, addrlen);
    var socket = get_socket_from_fd(fd);
    socket.info = info;
    return 0;
}
"""
syscall_listen = """
function ___syscall_listen(fd, backlog) {
    // Indicates the fd should be waiting for accept
    var current = FS.getStream(fd);
    current.should_listen = true;
    return 0;
}
"""
syscall_socket = """
function ___syscall_socket(domain, type, protocol) {
    // Creating the fd for the type of socket
    var sock = create_custom_socket();
    sock.domain = domain;
    sock.type = type;
    sock.protocol = protocol;

    // file descriptor is handled by the FS 
    return sock.stream.fd;
}
"""
syscall_accept4 = """
function ___syscall_accept4(fd, addr, addrlen, flags) {
    // Returns a new socket
    var newSock = create_custom_socket();
    var current = get_socket_from_fd(fd);
    if (addr !== 0 && current.info) {
        writeSockaddr(addr, current.info.family, current.info.addr, current.info.port, addrlen);
    }
    return newSock.stream.fd;
}
"""
syscall_connect = """
function ___syscall_connect(fd,addr,addrlen) {
    // Connects client side to a socket
    var current = get_socket_from_fd(fd);
    if (addr !== 0) {
        var info = getSocketAddress(addr, addrlen);
        current.info = info;
    }
    // Don't need to do anything here as we're already connected
    // Might want to read the address information to determine if
    // should use custom sockets or default back to web
    return 0;
}
"""
syscall_getsockname = """
function ___syscall_getsockname(fd,addr,addrlen) {
    var current = get_socket_from_fd(fd);
    if (current && current.info) {
        writeSockaddr(addr, current.info.family, current.info.addr, current.info.port, addrlen);
    }
    return 0;
}
"""
syscall_recvfrom = """
function ___syscall_recvfrom(fd, buf, len, flags, addr, addrlen) {
    // Should block trying to receive data from the other side
    var result = CustomSockets.connection.sendRequest(`recvfrom`, { length: len }, new FileSockets.sync_api.VariableResult("json"));
    var current = get_socket_from_fd(fd);
    if (addr !== 0 && current.info) {
        writeSockaddr(addr, current.info.family, current.info.addr, current.info.port, addrlen);
    }
    stringToUTF8Array(result.data.value, HEAP8, buf, len);
    return result.data.value.length;
}
"""


def replace_func(input: str, func_name: str, new_func: str) -> str:
    # Find position of function
    match = re.match(f"function {func_name}\\(.*?\\).*?{{", input)
    if match == None:
        return input
    start = match.start()

    # Go forward find { and then }
    pos = match.end()
    brace_count = 1
    while pos < len(input) and brace_count > 0:
        pos += 1
        char = input[pos]
        if char == "{":
            brace_count += 1
        elif char == "}":
            brace_count -= 1

    if pos >= len(input):
        raise Exception(f"Went off the end of the input str: {pos}")

    # From start to pos should be the contents of the function
    return input[:start] + new_func + input[pos+1:]



def patch(input: str, output_dir: str):
    input = os.path.realpath(input)
    output_dir = os.path.realpath(output_dir)

    # Make sure not the same subdirectory (as we'll be copying a bunch of other files too)
    input_dir = os.path.dirname(input)
    if input_dir == output_dir:
        raise Exception(f"{input} dir is the same as the output.")

    if not os.path.exists(output_dir):
        raise Exception(f"{output_dir} has to exist prior to patching")

    # Remove the output tree and recreated it
    shutil.rmtree(output_dir, ignore_errors=True)
    os.mkdir(output_dir)

    # Create a build dir. This is where all the build output will go
    output_python_build_dir = os.path.join(output_dir, "build", "patched")
    shutil.copytree(input_dir, output_python_build_dir)

    # This should already contain a python.js. That's the file we want to edit
    input_basename = os.path.basename(input)
    output_python_js = os.path.join(output_python_build_dir, input_basename)

    # Search for OS.py in the 'lib' folder. Need lib folder too
    os_py = os.path.realpath(os.path.join(input_dir, "..", "..", "Lib", "os.py"))
    if os.path.exists(os_py):
        shutil.copytree(os.path.dirname(os_py), os.path.join(output_dir, "Lib"))

    input_contents = None
    with open(input, 'r') as f:
        input_contents = f.read()

    # Search for the different functions
    output_contents = replace_func(input_contents, '___syscall_bind', syscall_bind)
    output_contents = replace_func(output_contents, '___syscall_accept4', syscall_accept4)
    output_contents = replace_func(output_contents, '___syscall_socket', syscall_socket)
    output_contents = replace_func(output_contents, '___syscall_listen', syscall_listen)
    output_contents = replace_func(output_contents, '___syscall_connect', syscall_connect)
    output_contents = replace_func(output_contents, '___syscall_getsockname', syscall_getsockname)
    output_contents = replace_func(output_contents, '___syscall_recvfrom', syscall_recvfrom)

    # Stick in the prerun hook before the last 'run' entry
    length = len(output_contents)
    pos = length - 6
    while pos != length - 500 and not output_contents[pos:].startswith("run();"):
        pos-=1

    if pos == length - 500:
        raise Exception(f"{input} seems to be missing a 'run();' call")

    output_contents = output_contents[:pos] + pre_run_code + output_contents[pos:]

    # Write these lines to the output
    with open(output_python_js, "w+") as f:
        f.write(output_contents)


parser = argparse.ArgumentParser(
    "patcher.py",
    description="Modifies the CPython's python.js to create custom sockets",
    formatter_class=argparse.RawDescriptionHelpFormatter,
)
parser.add_argument("--pythonjs", help="Path to the python.js file", required=True)
parser.add_argument("--outputdir", help="Path to the massaged output dir", required=True)

def main():
    args = parser.parse_args()
    patch(args.pythonjs, args.outputdir)

if __name__ == "__main__":
    main()


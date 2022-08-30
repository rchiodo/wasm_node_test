import argparse
import re

pre_run_code = """
var CustomSockets = {
    counter: Number = 0,
    sync_api: any = undefined,
    connection: any = undefined,
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

function create_socket_fs_node() {
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
    var sock = create_socket_fs_node();
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
    var newSock = create_socket_fs_node();
    var current = get_socket_from_fd(fd);
    if (addr !== 0) {
        var info = getSocketAddress(addr, addrlen);
        newSock.info = info;
    } else {
        newSock.info = current.info;
    }
    return newSock.stream.fd;
}
"""

def replace_func(lines: str, func_name: str, new_func: str) -> str:
    match = re.findall(f"function {func_name}\(.*\)", lines)


def patch(input: str, output: str):
    # Make sure not the same value
    if input == output:
        raise Exception(f"{input} is the same as the output.")

    lines = None
    with open(input, 'r') as f:
        lines = f.read()

    # Search for the different functions
    lines = replace_func(lines, '___syscall_bind', syscall_bind)
    lines = replace_func(lines, '___syscall_accept4', syscall_accept4)
    lines = replace_func(lines, '___syscall_socket', syscall_socket)
    lines = replace_func(lines, '___syscall_listen', syscall_listen)

    # Stick in the prerun hook after the last 'run' entry
    matches = re.finditer(r".*(run\(\);)", lines, re.MULTILINE)
    *_, last = matches
    lines = lines[:last.start] + pre_run_code + lines[last.start:]

    # Write these lines to the output
    with open(output, 'w+') as f:
        f.write(lines)



parser = argparse.ArgumentParser(
    "builder.py",
    description="Modifies the CPython's python.js to create custom sockets",
    formatter_class=argparse.RawDescriptionHelpFormatter,
)
parser.add_argument("--pythonjs", help="Path to the python.js file", required=True)
parser.add_argument("--outputjs", help="Path to the new js file", required=True)

def main():
    args = parser.parse_args()
    patch(args.pythonjs, args.outputjs)

if __name__ == "__main__":
    main()


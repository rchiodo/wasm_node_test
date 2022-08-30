var FileSockets = {
    counter: Number = 0,
    next_name: function () {
        FileSockets.counter += 1;
        return `socket${FileSockets.counter}`;
    },
    mount: function () {
        // return a root node
        return FS.createNode(null, '/', 49152, 0);
    },
    stream_ops: {
        poll: function (stream) {
            console.log(`polling`);
            var sock = stream.node.sock;
            return sock.sock_ops.poll(sock);
        },
        ioctl: function (stream, request, varargs) {
            console.log(`ioctl`);
            var sock = stream.node.sock;
            return sock.sock_ops.ioctl(sock, request, varargs);
        },
        read: function (stream, buffer, offset, length, position /* ignored */) {
            console.log(`read`);
            var sock = stream.node.sock;
            var msg = sock.sock_ops.recvmsg(sock, length);
            if (!msg) {
                // socket is closed
                return 0;
            }
            buffer.set(msg.buffer, offset);
            return msg.buffer.length;
        },
        write: function (stream, buffer, offset, length, position /* ignored */) {
            console.log(`write`);
            var sock = stream.node.sock;
            return sock.sock_ops.sendmsg(sock, buffer, offset, length);
        },
        close: function (stream) {
            console.log(`close`);
            var sock = stream.node.sock;
            sock.sock_ops.close(sock);
        }
    }
}

function create_socket_fs_node() {
    var name = FileSockets.next_name();
    var node = FS.createNode(FileSockets.root, name, 49152, 0)
    var sock = {};
    var stream = FS.createStream({ path: name, node: node, flags: 2, seekable: false, stream_ops: FileSockets.stream_ops })
    sock.stream = stream;
    node.sock = sock;
    return sock;
}

function get_socket_from_fd(fd) {
    var stream = FS.getStream(fd)
    return stream.node.sock;
}

function my_syscall_bind(fd, addr, addrlen) {
    // Binding address to the file descriptor
    var info = getSocketAddress(addr, addrlen);
    var socket = get_socket_from_fd(fd);
    socket.info = info;
    return 0;
}

function my_syscall_listen(fd, backlog) {
    // Indicates the fd should be waiting for accept
    var current = FS.getStream(fd);
    current.should_listen = true;
    return 0;
}

function my_syscall_socket(domain, type, protocol) {
    // Creating the fd for the type of socket
    var sock = create_socket_fs_node();
    sock.domain = domain;
    sock.type = type;
    sock.protocol = protocol;

    // file descriptor is handled by the FS 
    return sock.stream.fd;
}

function my_syscall_accept4(fd, addr, addrlen, flags) {
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


mergeInto(LibraryManager.library, {
    // Integrate with the Emscripten FS. We need to do this so read/write works on the socket
    $FileSockets__postset: function () {
        addAtInit('FileSockets.root = FS.mount(FileSockets, {}, null);');
    },
    $create_socket_fs_node: create_socket_fs_node,
    $get_socket_from_fd: get_socket_from_fd,
    $FileSockets__deps: ['$FS', '$create_socket_fs_node', '$get_socket_from_fd'],
    $FileSockets: FileSockets,
    __syscall_bind__deps: ['$getSocketAddress', '$FileSockets'],
    __syscall_bind: my_syscall_bind,
    __syscall_listen__deps: ['$getSocketAddress', '$FileSockets'],
    __syscall_listen: my_syscall_listen,
    __syscall_socket__deps: ['$FileSockets'],
    __syscall_socket: my_syscall_socket,
    __syscall_accept4__deps: ['$getSocketAddress', '$FileSockets'],
    __syscall_accept4: my_syscall_accept4
})
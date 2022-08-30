# How to patch CPython's python.js

Assuming Emscripten (as we need thread support), how do we patch CPython's python.js?

There are these 4 functions in the python.js

- ___syscall_bind - binds socket address to a file descriptor. 
- ___syscall_accept4 - binds a new file descriptor to the socket
- ___syscall_socket - creates new socket fd
- ___syscall_listen - indicates this is a server and it should start listening

## Text replace

Find the function definitions and parser forward matching braces. Replace contents of function with new functions.
Also need to put in the helper functions somewhere. 

## Emscripten --library-js

Rebuild CPython to use our custom library. 

What happens with different versions then? And does CPython want to support this option?


# Working on

--js-library with socket_file.js to try and replace socket io with writing/reading from a file

Build like this:

emcc --js-library socket_file.js server.c -o server.js -s EXIT_RUNTIME

Run like this:
node server_main.js

server_main.js should load the server.js into a worker and handle the socket requests.

# Next steps

## Step 1

Modify CPython.js after it's built. Not sure if this is doable, have to replace the sockets.    

## Step 2
Do this with CPython build (without dlo)
Debug a test file. 
Need an extension to implement debug adapter server that spawns the CPython.js as a worker, loading debugpy inside of it.
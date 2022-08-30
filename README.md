# Working on

--js-library with socket_file.js to try and replace socket io with writing/reading from a file

Build like this:

emcc --js-library socket_file.js server.c -o server.js

server_orig.js is the generated js from just building server.c

Could potentially use this:
https://www.npmjs.com/package/@vscode/sync-api-common

Next idea:
1. Build server.c into server.js with socket_file.js
2. socket_file.js uses sync-api-common to send listen/read/write messages
3. Create main.js that creates a webworker with server.js
4. Main.js has server side for the sync-api-common that reads from stdin and writes to stdout
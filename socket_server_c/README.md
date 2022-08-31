--js-library with socket_file.js to try and replace socket io with writing/reading from a file

Build like this:

```
cd socket_server_c
emcc --js-library socket_file.js server.c -o server.js -s EXIT_RUNTIME
cd ..
```

Run like this:
```
node ./socket_server_c/server_main.js
```

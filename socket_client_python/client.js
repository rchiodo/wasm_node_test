const { ServiceConnection } = require('@vscode/sync-api-common');
const { Worker } = require('node:worker_threads');

// The worker to access API in sync from.
const worker = new Worker('../patch_cpython/output/build/patched/python.js', { argv: ["client.py"] });

const connection = new ServiceConnection(worker);

// The request handler for 'read'
connection.onRequest('read', async (params) => {
    const result = await new Promise((resolve, reject) => {
        resolve('foo');
    })
    return { errno: 0, data: { value: result } };
});
connection.onRequest('recvfrom', async (params) => {
    // This would wait for a message to be written
    const result = await new Promise((resolve, reject) => {
        resolve('bar')
    })
    return { errno: 0, data: { value: result } };
});
connection.onRequest('write', async (params) => {
    console.log(`WRITE data from socket: ${params.str}`);
    return { errno: 0 };
})
connection.onRequest('close', async (params) => {
    return { errno: 0 };
})

// Signal connection ready so that the worker can call
// sync API.
connection.signalReady();


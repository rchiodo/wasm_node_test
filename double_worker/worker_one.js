const { Worker, parentPort } = require('node:worker_threads');

const worker = new Worker('./worker_two.js');
console.log(`Worker one + ${__filename}`)
const broadcast = new BroadcastChannel('cross-thread');
broadcast.onmessage((ev) => {
    parentPort.postMessage(ev);
})

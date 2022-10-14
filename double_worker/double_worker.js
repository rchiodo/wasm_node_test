const { Worker } = require('node:worker_threads');

const worker = new Worker('./worker_one.js');
worker.on('message', (m) => {
    if (m === 'from-two') {
        worker.postMessage('die');
    }
})
console.log('Main thread')

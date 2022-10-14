const { parentPort } = require('node:worker_threads');

let waiting = true;

parentPort.on('message', (m) => {
    waiting = false;
})

let timer = undefined;
const handler = () => {
    if (!waiting) {
        clearTimeout(timer);
    } else {
        timer = setTimeout(handler, 1000);
    }
}
timer = setTimeout(handler, 1000);
console.log('Worker Two');
parentPort.postMessage('from-two');
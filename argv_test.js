const { Worker, isMainThread } = require('node:worker_threads');

if (isMainThread) {
    new Worker(__filename, { argv: ['foo', 'bar'] })
}
else if (!isMainThread) {
    console.log(process["argv"]) // ['foo', 'bar']
}
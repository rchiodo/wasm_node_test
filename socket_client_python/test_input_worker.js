const { Worker } = require('node:worker_threads');

// The worker to access API in sync from.
const worker = new Worker('/home/rich/source/wasm_node_test/patch_cpython/output/build/patched/python.js', { argv: ["test_input.py"] });


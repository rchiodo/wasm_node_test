const process = require('process');
const readline = require('readline');
var rl = readline.createInterface({ input: process.stdin, output: process.stdout });

async function main() {
    return new Promise((resolve, reject) => {
        rl.question('Enter result for stream', (answer) => {
            console.log(`Stream gets: ${answer}`);
            resolve();
            rl.close();
        });
    });
}

main();

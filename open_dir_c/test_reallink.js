const fs = require('node:fs');
var testpath = "/home/rich/source/"
fs.readlink(testpath, (error, res) => {
   if (error) {
    console.log(`Error is ${error}`);
   } else {
    console.log(`ReadLink Real path is ${res}`);
   }
});

fs.realpath(testpath, (err, path) => {
    if (err) {
        console.log(`Error is ${err}`);
       } else {
        console.log(`RealPath Real path is ${path}`);
       }
})

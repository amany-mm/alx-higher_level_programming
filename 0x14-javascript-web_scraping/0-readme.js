#!/usr/bin/node
/**
 * Script that reads and prints the content of a file.
 * Usage $ ./0-readme.js cisfun
*/
const fileName = process.argv[2];
const fs = require('fs');

fs.readFile(fileName, 'UTF-8', (err, fileContent) => {
  if (err) {
    console.log(err);
  } else {
    console.log(fileContent);
  }
});

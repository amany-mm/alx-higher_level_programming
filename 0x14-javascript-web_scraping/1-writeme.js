#!/usr/bin/node
/**
 * script that writes a string to a file.
 * Usage $ ./1-writeme.js my_file.txt "Python is cool"
*/
const fileName = process.argv[2];
const fileContent = process.argv[3];
const fs = require('fs');

fs.writeFile(fileName, fileContent, 'utf-8', (error) => {
  if (error) {
    console.log(error);
  }
});

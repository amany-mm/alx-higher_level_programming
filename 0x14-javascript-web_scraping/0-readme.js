#!/usr/bin/node

const fileName = process.argv[2];
const fs = require('fs');

fs.readFile(fileName, 'UTF-8', (error, fileContent) => {
  if (error) {
    console.log(error);
  } else {
    console.log(fileContent);
  }
});

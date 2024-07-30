#!/usr/bin/node
/**
 * script that display the status code of a GET request.
 * Usage $ ./2-statuscode.js https://alx-intranet.hbtn.io/status
*/

const URL = process.argv[2];
const request = require('request');

request.get(URL, (err, response) => {
  if (err) {
    console.log(err);
  } else {
    console.log(`code: ${response.statusCode}`);
  }
});

#!/usr/bin/node
/**
 * Script that prints the title of a Star Wars movie
 * where the episode number matches a given integer.
 * Usage $ ./3-starwars_title.js 1
*/

const ID = process.argv[2];
const URL = `https://swapi-api.alx-tools.com/api/films/${ID}`;
const request = require('request');

request.get(URL, (err, response, body) => {
  if (err) {
    console.log(err);
  } else {
    const content = JSON.parse(body);
    console.log(content.title);
  }
});

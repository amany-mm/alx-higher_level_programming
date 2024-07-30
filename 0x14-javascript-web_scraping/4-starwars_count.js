#!/usr/bin/node
/**
 * Script that prints the number of movies
 * where the character “Wedge Antilles” is present.
 * Usage $ ./4-starwars_count.js https://swapi-api.alx-tools.com/api/films
*/

const URL = process.argv[2];
const ID = '18';
const request = require('request');

request.get(URL, (error, response, body) => {
  if (error) {
    console.log(error);
  } else {
    let movies = 0;
    const content = JSON.parse(body);

    content.results.forEach((film) => {
      film.characters.forEach((character) => {
        if (character.includes(ID)) {
          movies += 1;
        }
      });
    });
    console.log(movies);
  }
});

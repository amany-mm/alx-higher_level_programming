-- A script that lists all cities contained in the database hbtn_0d_usa.
-- * Each record should display: cities.id - cities.name - states.name
-- * Results must be sorted in ascending order by cities.id
-- * You can use only one SELECT statement
-- * The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ echo 'SELECT * FROM states;' | mysql -hlocalhost -uroot -p hbtn_0d_usa
-- id  name
-- 1   California
-- 2   Arizona
-- 3   Texas
-- 4   Utah
-- ubuntu@ubuntu:~/$ echo 'SELECT * FROM cities;' | mysql -hlocalhost -uroot -p hbtn_0d_usa
-- id  state_id    name
-- 1   1   San Francisco
-- 2   1   San Jose
-- 4   2   Page
-- 6   3   Paris
-- 7   3   Houston
-- 8   3   Dallas
-- ubuntu@ubuntu:~/$ cat 9-cities_by_state_join.sql | mysql -hlocalhost -uroot -p hbtn_0d_usa
-- id  name    name
-- 1   San Francisco   California
-- 2   San Jose    California
-- 4   Page    Arizona
-- 6   Paris   Texas
-- 7   Houston Texas
-- 8   Dallas  Texas

SELECT cities.id,
       cities.name,
       states.name
FROM cities
JOIN states
WHERE cities.state_id = states.id;

-- A script that lists all the cities of California that can be found in the database hbtn_0d_usa.
-- The states table contains only one record where name = California (but the id can be different, as per the example)
-- Results must be sorted in ascending order by cities.id
-- You are not allowed to use the JOIN keyword
-- The database name will be passed as an argument of the mysql command
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
-- ubuntu@ubuntu:~/$ cat 8-cities_of_california_subquery.sql | mysql -hlocalhost -uroot -p hbtn_0d_usa
-- id  name
-- 1   San Francisco
-- 2   San Jose

SELECT id,
       name
FROM   cities
WHERE  state_id IN (SELECT id
                    FROM   states
                    WHERE  name = "California");

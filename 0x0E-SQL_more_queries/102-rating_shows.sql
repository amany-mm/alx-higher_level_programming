-- Import the database hbtn_0d_tvshows_rate dump to your MySQL server: download
-- $ echo "CREATE DATABASE hbtn_0d_tvshows_rate;" | mysql -uroot -p
-- $ curl "https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows_rate.sql" -s | mysql -uroot -p hbtn_0d_tvshows_rate

-- A script that lists all shows from hbtn_0d_tvshows_rate by their rating.
-- * Each record should display: tv_shows.title - rating sum
-- * Results must be sorted in descending order by the rating
-- * You can use only one SELECT statement
-- * The database name will be passed as an argument of the mysql command

-- ubuntu@ubuntu:~/$ cat 102-rating_shows.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows_rate
-- title   rating
-- Better Call Saul    163
-- Homeland    145
-- Silicon Valley  82
-- Game of Thrones 79
-- Dexter  24
-- House   21
-- Breaking Bad    16
-- The Last Man on Earth   10
-- The Big Bang Theory 0
-- New Girl    0

SELECT tv_shows.title AS title , SUM(tv_show_ratings.rate) AS rating
FROM tv_shows
INNER JOIN tv_show_ratings ON tv_shows.id = tv_show_ratings.show_id
GROUP BY title
ORDER BY rating DESC;

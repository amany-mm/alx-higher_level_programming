-- Import the database dump from hbtn_0d_tvshows_rate to your MySQL server: download (same as 102-rating_shows.sql)

-- A script that lists all genres in the database hbtn_0d_tvshows_rate by their rating.
-- * Each record should display: tv_genres.name - rating sum
-- * Results must be sorted in descending order by their rating
-- * You can use only one SELECT statement
-- * The database name will be passed as an argument of the mysql command

-- ubuntu@ubuntu:~/$ cat 103-rating_genres.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows_rate
-- name    rating
-- Drama   150
-- Comedy  92
-- Adventure   79
-- Fantasy 79
-- Mystery 45
-- Crime   40
-- Suspense    40
-- Thriller    40

SELECT tv_genres.name AS name , SUM(tv_show_ratings.rate) AS rating
FROM tv_genres
INNER JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
INNER JOIN tv_show_ratings ON tv_show_genres.show_id = tv_show_ratings.show_id
GROUP BY name
ORDER BY rating DESC;

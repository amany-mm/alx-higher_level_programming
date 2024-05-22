-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download
-- $ echo "CREATE DATABASE hbtn_0d_tvshows;" | mysql -uroot -p
-- $ curl "https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows.sql" -s | mysql -uroot -p hbtn_0d_tvshows

-- A script that lists all shows contained in hbtn_0d_tvshows that have at least one genre linked.
-- Each record should display: tv_shows.title - tv_show_genres.genre_id
-- Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- You can use only one SELECT statement
-- The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 10-genre_id_by_show.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows
-- title   genre_id
-- Breaking Bad    1
-- Breaking Bad    6
-- Breaking Bad    7
-- Breaking Bad    8
-- Dexter  1
-- Dexter  2
-- Dexter  6
-- Dexter  7
-- Dexter  8
-- ....

SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id 
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;

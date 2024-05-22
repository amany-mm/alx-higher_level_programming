-- Import the database dump of hbtn_0d_tvshows to your MySQL server: download (same as 10-genre_id_by_show.sql)

-- A script that lists all shows contained in the database hbtn_0d_tvshows.
-- Each record should display: tv_shows.title - tv_show_genres.genre_id
-- Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- If a show doesn’t have a genre, display NULL
-- You can use only one SELECT statement
-- The database name will be passed as an argument of the mysql command

-- ubuntu@ubuntu:~/$ cat 11-genre_id_all_shows.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows
-- title   genre_id
-- Better Call Saul    NULL
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

SELECT tv_shows.title , tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id 
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;

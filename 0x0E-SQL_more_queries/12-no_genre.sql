-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download (same as 11-genre_id_all_shows.sql)

-- A script that lists all shows contained in hbtn_0d_tvshows without a genre linked.
-- * Each record should display: tv_shows.title - tv_show_genres.genre_id
-- * Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- * You can use only one SELECT statement
-- * The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 12-no_genre.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows
-- title   genre_id
-- Better Call Saul    NULL
-- Homeland    NULL

SELECT tv_shows.title , tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title, tv_show_genres.genre_id ASC;

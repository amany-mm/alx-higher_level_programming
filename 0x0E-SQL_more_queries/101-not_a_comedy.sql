-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download (same as 100-not_my_genres.sql)

-- A script that lists all shows without the genre Comedy in the database hbtn_0d_tvshows.
-- * The tv_genres table contains only one record where name = Comedy (but the id can be different)
-- * Each record should display: tv_shows.title
-- * Results must be sorted in ascending order by the show title
-- * You can use a maximum of two SELECT statement
-- * The database name will be passed as an argument of the mysql command

-- ubuntu@ubuntu:~/$ cat 101-not_a_comedy.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows
-- title
-- Better Call Saul
-- Breaking Bad
-- Dexter
-- Game of Thrones
-- Homeland
-- House


SELECT tv_shows.title AS title
FROM tv_shows
WHERE tv_shows.title NOT IN (
    SELECT tv_shows.title
    FROM tv_shows
        INNER JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
        INNER JOIN tv_genres ON tv_genres.id = tv_show_genres.genre_id
        WHERE tv_genres.name = "Comedy")
ORDER BY title ASC;
 
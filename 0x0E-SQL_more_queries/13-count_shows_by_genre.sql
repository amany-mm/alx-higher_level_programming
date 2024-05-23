-- Import the database dump from hbtn_0d_tvshows to your MySQL server: download (same as 12-no_genre.sql)

-- A script that lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each.
-- * Each record should display: <TV Show genre> - <Number of shows linked to this genre>
-- * First column must be called genre
-- * Second column must be called number_of_shows
-- * Don’t display a genre that doesn’t have any shows linked
-- * Results must be sorted in descending order by the number of shows linked
-- * You can use only one SELECT statement
-- * The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 13-count_shows_by_genre.sql | mysql -hlocalhost -uroot -p hbtn_0d_tvshows
-- genre   number_of_shows
-- Drama   5
-- Comedy  4
-- Mystery 2
-- Crime   2
-- Suspense    2
-- Thriller    2
-- Adventure   1
-- Fantasy 1

SELECT tv_genres.name AS genre, COUNT(*) As number_of_shows
FROM tv_genres
INNER JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
GROUP BY genre
ORDER BY number_of_shows DESC;

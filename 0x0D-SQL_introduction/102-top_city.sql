-- As previous script using the same table temperatures from dump temperatures.sql
-- A script that displays the top 3 of cities temperature
-- during July and August ordered by temperature (descending)
-- ubuntu@ubuntu:~/$ cat 102-top_city.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
SELECT city,
       Avg(value) AS avg_temp
FROM   temperatures
WHERE  month = 7
       OR month = 8
GROUP  BY city
ORDER  BY avg_temp DESC
LIMIT  3;

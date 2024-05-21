-- Import in hbtn_0c_0 database this table dump: temperatures.sql
-- ubuntu@ubuntu:~/$ mysql -u root -p hbtn_0c_0  < temperatures.sql
-- A script that displays the average temperature (Fahrenheit)
-- by city ordered by temperature (descending).
-- ubuntu@ubuntu:~/$ cat 101-avg_temperatures.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
SELECT city,
       Avg(value) AS avg_temp
FROM   temperatures
GROUP  BY city
ORDER  BY avg_temp DESC; 

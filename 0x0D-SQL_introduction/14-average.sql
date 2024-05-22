-- A script that computes the score average of all records
-- in the table second_table of the database hbtn_0c_0 in your MySQL server.
-- The result column name should be average
-- The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 14-average.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
SELECT Avg(score) AS average
FROM   second_table;

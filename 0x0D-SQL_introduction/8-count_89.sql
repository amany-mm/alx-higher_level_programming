-- A script that displays the number of records with id = 89 
-- in the table first_table of the database hbtn_0c_0 in your MySQL server.
-- The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 8-count_89.sql | mysql -hlocalhost -uroot -p hbtn_0c_0 | tail -1
SELECT Count(id)
FROM   first_table
WHERE  id = 89; 

-- A script that prints the full description of the table first_table
-- from the database hbtn_0c_0 in your MySQL server.
-- The database name will be passed as an argument of the mysql command
-- You are not allowed to use the DESCRIBE or EXPLAIN statements
-- ubuntu@ubuntu:~/$ cat 5-full_table.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
SHOW CREATE TABLE first_table;

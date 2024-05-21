-- A script that removes all records with a score <= 5
-- in the table second_table of the database hbtn_0c_0 in your MySQL server.
-- The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 13-change_class.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
DELETE FROM second_table WHERE score <=5;

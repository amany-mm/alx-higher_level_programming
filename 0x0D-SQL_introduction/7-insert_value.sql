-- A script that inserts a new row in the table first_table
-- (database hbtn_0c_0) in your MySQL server.
-- New row: id = 89, name = Best School
-- The database name will be passed as an argument of the mysql command
-- ubuntu@ubuntu:~/$ cat 7-insert_value.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
INSERT INTO first_table
            (id,
             name)
VALUES      (89,
             'Best School');

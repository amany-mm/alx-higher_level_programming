-- A script that creates the table id_not_null on your MySQL server.
-- id_not_null description: id INT with the default value 1, name VARCHAR(256)
-- The database name will be passed as an argument of the mysql command
-- If the table id_not_null already exists, your script should not fail
-- ubuntu@ubuntu:~/$ cat 4-never_empty.sql | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ubuntu@ubuntu:~/$ echo 'INSERT INTO id_not_null (id, name) VALUES (89, "Best School");' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ubuntu@ubuntu:~/$ echo 'SELECT * FROM id_not_null;' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- id  name
-- 89  Best School
-- ubuntu@ubuntu:~/$ echo 'INSERT INTO id_not_null (name) VALUES ("Best");' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ubuntu@ubuntu:~/$ echo 'SELECT * FROM id_not_null;' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- id  name
-- 89  Best School
-- 1   Best
CREATE TABLE IF NOT EXISTS id_not_null
  (
     id   INT DEFAULT 1,
     name VARCHAR(256)
  );

-- A script that creates the table unique_id on your MySQL server.
-- unique_id description: id INT with the default value 1 and must be unique, name VARCHAR(256)
-- The database name will be passed as an argument of the mysql command
-- If the table unique_id already exists, your script should not fail
-- @ubuntu:~/$ cat 5-unique_id.sql | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ubuntu@ubuntu:~/$ echo 'INSERT INTO unique_id (id, name) VALUES (89, "Best School");' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ubuntu@ubuntu:~/$ echo 'SELECT * FROM unique_id;' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- id  name
-- 89  Best School
-- ubuntu@ubuntu:~/$ echo 'INSERT INTO unique_id (id, name) VALUES (89, "Best");' | mysql -hlocalhost -uroot -p hbtn_0d_2
-- ERROR 1062 (23000) at line 1: Duplicate entry '89' for key 'unique_id.id'
CREATE TABLE IF NOT EXISTS `unique_id` 
  (
     `id`   INT DEFAULT 1 UNIQUE,
     `name` VARCHAR(256)
  );

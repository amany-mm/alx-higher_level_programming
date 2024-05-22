-- A script that lists all privileges of the MySQL users user_0d_1 and user_0d_2 on your server (in localhost).
-- ubuntu@ubuntu:~/$ cat 0-privileges.sql | mysql -hlocalhost -uroot -p
-- ERROR 1141 (42000) at line 3: There is no such grant defined for user 'user_0d_1' on host 'localhost'
-- ubuntu@ubuntu:~/$ echo "CREATE USER 'user_0d_1'@'localhost';" |  mysql -hlocalhost -uroot -p
-- ubuntu@ubuntu:~/$ echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';" |  mysql -hlocalhost -uroot -p
-- ubuntu@ubuntu:~/$ cat 0-privileges.sql | mysql -hlocalhost -uroot -p
-- Grants for user_0d_1@localhost                                                                                                
-- GRANT ALL PRIVILEGES ON *.* TO `user_0d_1`@`localhost`                                                                                                                             
-- GRANT APPLICATION_PASSWORD_ADMIN,AUDIT...,XA_RECOVER_ADMIN ON *.* TO `user_0d_1`@`localhost`                                        
-- ERROR 1141 (42000) at line 4: There is no such grant defined for user 'user_0d_2' on host 'localhost'              

SHOW GRANTS FOR 'user_0d_1'@'localhost';
SHOW GRANTS FOR 'user_0d_2'@'localhost';

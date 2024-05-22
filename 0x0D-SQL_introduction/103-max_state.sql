-- As previous script using the same table temperatures from dump temperatures.sql
-- A script that displays the max temperature of each state (ordered by State name).
-- ubuntu@ubuntu:~/$ cat 103-max_state.sql | mysql -hlocalhost -uroot -p hbtn_0c_0
SELECT state,
       Max(value) AS max_temp
FROM   temperatures
GROUP  BY state
ORDER  BY state; 

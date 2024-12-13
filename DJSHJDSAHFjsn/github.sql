CREATE DATABASE git ;
USE git;
CREATE TABLE gittable (
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO gittable 
(rollno, name)
VALUES
(1,"DEEP"),
(2,"DASH");
SELECT * FROM gittable;
CREATE DATABASE IF NOT EXISTS colege;

USE colege;
CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL ,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "anil",78 , "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85,"B", "Mumbai"),
(104, "dhruv",96,"A", "Delhi"),
(105, "emanuel" , 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT name , marks FROM student;

SELECT * FROM student;

SELECT DISTINCT city FROM student;
SELECT * FROM student Where marks >80;
SELECT * FROM student Where city = "Delhi";
SELECT * FROM student Where marks >80 AND city= "Delhi";
SELECT * FROM student Where marks+10 >100;

SELECT * FROM student Where marks >80 OR city = "Mumbai";

SELECT * FROM student Where marks BETWEEN 80 AND 90;

SELECT * FROM student Where city IN ("Delhi", "Mumbai","Gurgaon");

SELECT * FROM student Where city NOT IN ("Delhi");

SELECT * FROM student Where marks NOT BETWEEN 80 AND 90;

SELECT * FROM student Where marks NOT BETWEEN 80 AND 90 LIMIT 2;

SELECT * FROM student Where city NOT IN ("Delhi") LIMIT 2;

SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
SELECT * FROM student ORDER BY name ASC; 
SELECT * FROM student ORDER BY name DESC ; 

SELECT marks FROM student ;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT COUNT(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;

SELECT city FROM student GROUP BY city;
SELECT city , COUNT(name) FROM student GROUP BY city;
SELECT city , COUNT(rollno) FROM student GROUP BY city;
SELECT city,name , COUNT(rollno) FROM student GROUP BY city , name;
SELECT name ,SUM(rollno) FROM student GROUP BY name;
SELECT city , AVG(rollno) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks);
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) DESC;
SELECT grade , COUNT(rollno) FROM student GROUP BY grade ORDER BY grade;


SELECT city, COUNT(rollno) FROM student GROUP BY city ;
SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MAX(marks) > 90;


DROP TABLE IF EXISTS gittable;

DROP DATABASE IF EXISTS git;

USE colege;

SELECT city 
FROM student
WHERE GRADE="A"
GROUP BY city
HAVING MAX(marks) >=95
ORDER BY city DESC;


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
USE colege;
SELECT * FROM student;


ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

INSERT INTO student
(rollno,name,marks,age)
VALUES
(107,"gargi",68,10);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student
(rollno,name,marks,stu_age)
VALUES
(108,"garg",68,100);

ALTER TABLE student
RENAME TO stu;

SELECT * FROM stu;

ALTER TABLE stu
RENAME TO student;

ALTER TABLE student 
CHANGE name full_name VARCHAR(50);
SELECT * FROM student;
 SET SQL_SAFE_UPDATES = 0;
 USE colege;
DELETE FROM student WHERE marks <80;

USE colege;
SELECT * FROM student;

ALTER TABLE student
DROP COLUMN grade;

/* SUBQUERY */
SELECT full_name,marks
FROM student
Where marks > (SELECT AVG(marks) FROM student);

/* EVEN NUMBER */
SELECT rollno FROM student
Where rollno % 2=0;

/* PRINT ALL NAME HAVING EVEN ROLLNO BY USING SUBQUERY :- "Where" */
SELECT full_name, rollno
FROM student
Where rollno IN (
    SELECT rollno FROM student
	Where rollno % 2=0 );
    
    /* PRINT THE MAX MARKS FROM THE STUDENTS OF DELHI BY USING SUBQUERY :- "FROM" */
    SELECT MAX(marks)
    FROM (SELECT * FROM student Where city = "delhi") AS temp;
    
    /* SUBQUERY :- "SELECT" */
    SELECT (SELECT MAX(marks) FROM student), full_name
    FROM student;
    
    /* VIRTUAL TABLE OR VIEW TABLE */
    CREATE VIEW view1 AS
    SELECT rollno, full_name, marks FROM student;
    
    SELECT * FROM view1;
    SELECT * FROM view1
    Where marks > 90;
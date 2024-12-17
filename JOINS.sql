CREATE DATABASE joins;
USE joins;
CREATE TABLE student (
student_id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO student 
(student_id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE TABLE course (
student_id INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO course
(student_id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

ALTER TABLE course
CHANGE student_id ID INT ;

/* RENAME STUDENT TABLE COLUMN "STUDENT_ID" INTO "ID" */
ALTER TABLE student
CHANGE student_id ID INT;

/* INNER JOIN */
SELECT * FROM student 
INNER JOIN course 
ON student.ID = course.ID;

/* ALIAS "AS" USE */
SELECT * FROM student AS s
INNER JOIN course AS c
ON s.ID = c.ID;

/* LEFT JOIN */
SELECT * FROM student AS a
LEFT JOIN course AS b
ON a.ID = B.ID;

/* RIGHT JOIN */
SELECT * FROM student AS a
RIGHT JOIN course AS b
ON a.ID = b.ID;

/* FULLY JOIN */
SELECT * FROM student AS s
LEFT JOIN course AS c
ON s.ID = c.ID
UNION
SELECT * FROM student AS a
RIGHT JOIN course AS b
ON a.ID = b.ID;

/* LEFT EXCLUSIVE JOIN */
SELECT * FROM student AS s
LEFT JOIN course AS c
ON s.ID = c.ID
Where c.ID IS NULL;

/* RIGHT EXCLUSIVE JOIN */
SELECT * FROM student AS a
RIGHT JOIN course AS b
ON a.ID = b.ID
Where a.ID IS NULL;

/* FULLY EXCLUSIVE JOINS */
SELECT * FROM student AS a
LEFT JOIN course AS b
ON a.ID = b.ID
Where b.ID IS NULL
UNION
SELECT * FROM student AS s
RIGHT JOIN course AS c
ON s.ID = c.ID
Where s.ID IS NULL;



CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);
INSERT INTO employee
(id, name, manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);
 SELECT * FROM employee;
 
 /* SELF JOIN */
 SELECT * 
 FROM employee AS a
 JOIN employee AS b
 ON a.id = b.manager_id;
 
  SELECT a.name AS manager_name, b.name
 FROM employee AS a
 JOIN employee AS b
 ON a.id = b.manager_id;
 
 /* UNION = GIVE ALL UNIQUE VALUES AFTER JOINING TWO TABLE */
 SELECT name FROM employee
 UNION 
 SELECT name FROM employee;
 
 /* UNION ALL = GIVE ALL VALUES , UNIQUE AS WELL AS DUPLICATES */
 SELECT name FROM employee
 UNION ALL
 SELECT name FROM employee;
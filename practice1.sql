CREATE DATABASE IF NOT EXISTS xyz;
USE xyz;

CREATE TABLE employee (
id INT PRIMARY KEY, 
name VARCHAR(100), 
salary INT 
);


INSERT INTO employee 
(id, name, salary)
VALUES
(1, "adam" , 25000),
(2, "bob" , 30000),
(3, "casey" , 40000);
SELECT * FROM empolyee;
DROP DATABASE IF EXISTS xyz;
CREATE DATABASE IF NOT EXISTS xyz;
USE xyz;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT NOT NULL
);


INSERT INTO employee 
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employee;




 
 
 CREATE TABLE temp1(
 id INT PRIMARY KEY,
 name VARCHAR(100)
 );
 
 CREATE TABLE temp2 (
 id INT,
 name VARCHAR(100),
 PRIMARY KEY (id)
 );
 
 CREATE TABLE temp3(
 id INT NOT NULL,
 name VARCHAR(50),
 age INT,
 PRIMARY KEY (age, name)
 );
 
 INSERT INTO temp1 
 (id , name)
 VALUES 
 (1, "DEEPANSHU" ),
 (2, "DEEPANSHU" );
 
 INSERT INTO temp2 
 (id, name )
 VALUES 
 (1, "DEEPANSHU"),
 (2, "DASHAM");
 
 
 INSERT INTO temp3 
 (id, name ,age)
 VALUES
 (1, "DEEPANSHU", 23),
 (2, "DASHAM", 23),
 (3, "DEEPANSHU", 24);
 
 
 SELECT * FROM temp3;
 SELECT * FROM temp2;
 SELECT * From temp1;
 
 
 CREATE TABLE temp(
 id INT,
 FOREIGN KEY (id) references temp1(id),
 salary INT DEFAULT 25000
 );
 
 CREATE TABLE city (
 id INT PRIMARY KEY,
 city VARCHAR(50),
 age INT ,
 CONSTRAINT age_check CHECK (age >= 18 AND city="DELHI")
 );
 
 INSERT INTO city 
 (id, city ,age)
 VALUES
 (1, "DELHI" , 23),
 (2, "DELHI", 21),
 (3, "DELHI", 19);
 
SELECT * FROM city;
 
 
 SELECT * FROM temp;
CREATE DATABASE college_db;

USE college_db;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(30),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,grade,city)VALUES 
(101,'Anil',78,'C','Pune'),
(102,'Bhumika',93,'A','Mumbai'),
(103,'Chetan',85,'A','Mumbai'),
(104,'Anil',96,'A','Delhi'),
(105,'Dhruv',12,'F','Delhi'),
(106,'Pratik',82,'B','Delhi');

SELECT * FROM student;
SELECT rollno, name, marks FROM student;
SELECT DISTINCT city FROM student;

-- Where Clause

 SELECT rollno,name,marks,city FROM student WHERE marks > 80;
 SELECT * FROM student WHERE city = 'Mumbai';

-- BITWISE OPERATOR	

SELECT * FROM student WHERE marks > 90 AND city = "Mumbai";
SELECT * FROM student WHERE marks > 90 OR city = "Mumbai";

-- BETWEEN OPERATOR
SELECT * FROM student WHERE marks BETWEEN 80 AND 90; 

-- IN 
SELECT * FROM student WHERE city IN ("Pune","Mumbai"); 

SELECT * FROM student WHERE city NOT IN ("Pune","Mumbai"); 

-- LIMIT 

SELECT rollno,name,city FROM student LIMIT 3;

-- Order By Clause
SELECT * FROM student ORDER BY city ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- Aggregate Functions
-- COUNT(), MAX(), MIN(), SUM(), AVG()

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT COUNT(name) FROM student;


-- Group By Clause 
SELECT city, COUNT(name) FROM student GROUP BY city;
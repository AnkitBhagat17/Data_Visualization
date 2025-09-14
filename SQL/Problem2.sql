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
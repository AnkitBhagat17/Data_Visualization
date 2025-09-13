CREATE DATABASE Employee_DB;
USE Employee_DB;

CREATE TABLE Employee (
id INT PRIMARY KEY,
name VARCHAR(30),
salary INT NOT NULL
);

SHOW TABLES;

DESCRIBE Employee;

INSERT INTO Employee (id,name,salary)
VALUES (1,'adam',25000),
(2,'bob',30000),
(3,'casey',40000);

CREATE TABLE temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;

SELECT * FROM Employee;
-- Update - Used to update the existing rows

-- UPDATE table_name 
-- SET col1 = val1, col2 = val2
-- WHERE condition;  

USE college_db;
SHOW TABLES;

-- Safe Mode OFF = 0 and ON = 1 it used to change the values in the table so ask for permission if we want to modify the table
SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade = 'O' WHERE grade = "A";
SELECT * FROM student;

UPDATE 	student 
SET marks = marks + 1;

SELECT * FROM student;

-- DELETE (to delete existing rows)

-- DELETE FROM table_name
-- WHERE condition;

DELETE FROM student 
WHERE marks < 33;



-- Revisiting Foreign Keys

-- Parent Table
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
); 

SELECT * FROM dept;

INSERT INTO dept VALUES 
(101,'English'),
(102,'IT');

-- Child Table
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id) 
ON UPDATE CASCADE
ON DELETE CASCADE
);

DROP TABLE teacher;

INSERT INTO teacher VALUES
(101,'Adam', 101),
(102,'Eve', 102);

SELECT * FROM teacher;
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

SELECT * FROM dept;

UPDATE dept SET id = 103 WHERE id = 102;

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


-- Alter is used to change the Schema
-- ADD TABLE table_name
-- ADD COLUMN column_name datatype constraint;

-- DROP Column
-- ALTER TABLE table_name
-- DROP table_name; ( It is used to drop the table with table's data)
-- DROP COLUMN column_name;

ALTER TABLE student 
ADD COLUMN age INT;

ALTER TABLE student 
DROP COLUMN age;

-- RENAME TABLE 
-- ALTER TABLE table_ name
-- RENAME TO new_table_name; 

-- CHANGE COLUMN (rename)
-- ALTER TABLE table_name
-- MODIFY col_name new_datatype new_constraint;

-- ADD COLUMN

ALTER TABLE student 
ADD COLUMN age INT NOT NULL DEFAULT 19;

SELECT * FROM student;

-- MODIFY COLUMN 
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student 
(rollno,name,marks,stu_age)
VALUES
(107,"gargi",68,100);

ALTER TABLE student
DROP COLUMN stu_age;

-- TABLE RENAMING
ALTER TABLE student
RENAME TO stu;

ALTER TABLE stu
RENAME TO student;

-- TRUNCATE (to delete the tables's data) 
-- TRUNCATE TABLE table_name;

TRUNCATE TABLE student;
SELECT * FROM student;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

DELETE FROM student 
WHERE marks < 80;
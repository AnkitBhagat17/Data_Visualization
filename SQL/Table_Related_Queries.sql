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
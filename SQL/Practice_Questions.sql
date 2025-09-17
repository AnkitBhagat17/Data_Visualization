-- Write a Query to find avg marks in each city in ascending order. 
USE college_db;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city;

SELECT * FROM student;

SELECT grade FROM student GROUP BY grade ORDER BY grade;

SELECT grade , COUNT(rollno) FROM student GROUP BY grade ORDER BY grade;

-- Having Clause

SELECT COUNT(name),city FROM student GROUP BY city HAVING MAX(marks) > 90; 

--  General Order 
--  SELECT COLUMN(S)
-- FROM TABLE_NAME
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) 

SELECT DISTINCT city FROM student;

SELECT city FROM student WHERE grade = 'A';
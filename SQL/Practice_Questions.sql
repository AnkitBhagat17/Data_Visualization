-- Write a Query to find avg marks in each city in ascending order. 
USE college_db;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city;

SELECT * FROM student;

SELECT grade FROM student GROUP BY grade ORDER BY grade;
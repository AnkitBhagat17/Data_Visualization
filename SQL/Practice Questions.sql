-- Write a Query to find avg marks in each city in ascending order. 
USE college_db;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city;
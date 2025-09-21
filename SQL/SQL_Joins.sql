-- SQL JOINS
-- inner joins, left join , right join , full join 

-- 1) INNER JOIN - Returns records that have matching values in both tables

-- Syntax : 
-- SELECT column(s)
-- FROM tableA
-- INNER JOIN tableB
-- ON tableA.col_name = tableB.col_name;

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);


INSERT INTO course (id,course)
VALUES
(102,"English"),
(105, "Math"),
(103,"Science"),
(107,"Computer Science");

SELECT * FROM student;
SELECT * FROM course;
TRUNCATE TABLE student;
DROP TABLE student;

SELECT * FROM student as S INNER JOIN course as C ON S.rollno = C.id;
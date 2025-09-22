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

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Insert sample students
INSERT INTO student (rollno, name, age) VALUES
(1, 'Ankit', 20),
(2, 'Rahul', 21),
(3, 'Sneha', 22);

DROP TABLE course;

CREATE TABLE course (
    id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration VARCHAR(20)
);

-- Insert sample courses
INSERT INTO course (id, course_name, duration) VALUES
(1, 'Computer Science', '3 Years'),
(2, 'Mathematics', '2 Years'),
(4, 'Physics', '3 Years');

-- LEFT JOIN
SELECT * 
FROM student AS S
LEFT JOIN course AS C 
ON S.rollno = C.id;

-- RIGHT JOIN
SELECT S.rollno, S.name, C.course_name
FROM student AS S
RIGHT JOIN course AS C
ON S.rollno = C.id;

-- FULL JOIN USING UNION
SELECT S.rollno, S.name, C.course_name
FROM student AS S
LEFT JOIN course AS C ON S.rollno = C.id
UNION
SELECT S.rollno, S.name, C.course_name
FROM student AS S
RIGHT JOIN course AS C ON S.rollno = C.id;



SELECT * FROM student as S INNER JOIN course as C ON S.rollno = C.id;

-- LEFT JOIN : Returns all records from the left table, and the matched records from the right table.alter
-- Syntax
-- SELECT column(s)
-- FROM tableA 
-- LEFT JOIN tableB
-- ON tableA.col_name = tableB.col_name;

SELECT * FROM student as S LEFT JOIN course as C ON S.rollno = C.id;


-- LEFT EXCLUSIVE JOIN (Only rows in LEFT table that do not have a match in RIGHT table)
SELECT S.* 
FROM student AS S
LEFT JOIN course AS C 
ON S.rollno = C.id
WHERE C.id IS NULL;

-- RIGHT EXCLUSIVE JOIN (Courses without students)
SELECT C.* 
FROM student AS S
RIGHT JOIN course AS C 
ON S.rollno = C.id
WHERE S.rollno IS NULL;

-- SELF JOIN

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee (emp_id, emp_name, manager_id) VALUES
(1, 'Ankit', NULL),   -- CEO, no manager
(2, 'Rahul', 1),      -- Reports to Ankit
(3, 'Sneha', 1),      -- Reports to Ankit
(4, 'Amit', 2),       -- Reports to Rahul
(5, 'Neha', 2);       -- Reports to Rahul

SELECT E.emp_id, E.emp_name AS Employee, M.emp_name AS Manager
FROM employee E
LEFT JOIN employee M
ON E.manager_id = M.emp_id;

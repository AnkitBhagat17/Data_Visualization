SHOW DATABASES;
USE startersql;
update users SET salary = 45000 WHERE id = 1;

UPDATE users SET name = 'Alicia', email = 'alicia@gmail.com' WHERE id  = 2;

UPDATE users SET salary = 70000 WHERE id = 5 ;

UPDATE users SET name = 'Aisha Khan' where email = 'aisha@example.com';

UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

select * from users;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM users
WHERE salary > 65000;

DELETE FROM users WHERE id = 3;

select * from users WHERE id = 10;

-- FUNCTIONS IN SQL  

--  COUNT, MAX, MIN, 

SELECT COUNT(*) FROM users WHERE gender = 'Female'; 
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- SUM, AVG 
SELECT SUM(salary) AS total_salary FROM users;
SELECT AVG(salary) AS avg_salary FROM users;

-- GROUP BY
SELECT gender , AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- LENGTH 

SELECT id,gender, lower(name) as lower, LENGTH(name) AS name_len FROM users;

SELECT id,gender, lower(name) as lower, CONCAT(LOWER(name), '5677') as username, NOW() as time,YEAR(date_of_birth) AS yob, LENGTH(name) AS name_len FROM users;

SELECT name, DATEDIFF(CURDATE(),date_of_birth) AS days FROM users;

SELECT salary,
ROUND(salary) AS rounded,
FLOOR(salary) AS floored,
CEIL(salary) AS ceiled
FROM users;


SELECT id, MOD(id, 2) AS remainder FROM users;

SELECT name, gender,
IF(gender = 'Female', 'Yes', 'No') AS is_female
FROM users;

-- SET autocommit = 0;
select * from users;
-- rollback;
-- DELETE FROM users WHERE id = 11;

SELECT * FROM users;



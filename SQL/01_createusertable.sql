-- CREATE DATABASE IF NOT EXISTS startersql;
-- USE startersql;

-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary DECIMAL(10, 2),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- SELECT * from users;

-- select name , gender from users;

-- select * from users where gender = 'Female';

-- select * from users where gender = 'Male';

-- SELECT * FROM users where date_of_birth > '1999-05-18';

-- SELECT * FROM users where date_of_birth < '1999-05-18';

-- SELECT * FROM users where id <= 10;

-- SELECT * FROM users where date_of_birth Between '1999-05-18' AND '2004-05-17';

-- SELECT * FROM users WHERE gender = 'Male' AND salary >= 40000;

-- SELECT * FROM users WHERE gender = 'Female' OR salary > '65000' ORDER BY date_of_birth DESC LIMIT 5;

-- SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;

-- SELECT * FROM users ORDER BY salary DESC;

-- SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;
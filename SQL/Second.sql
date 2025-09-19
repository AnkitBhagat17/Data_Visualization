-- show databases

use startersql;

-- show tables

-- select * from users;

-- ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

INSERT INTO users VALUES 
(2,'Aman Chaoube','ac@gmail.com','Male','2007-08-18',DEFAULT),
(3,'Gargi Shende','GS@gmail.com','Female','2003-05-20',DEFAULT);

INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
('David', 'david@example.com', 'Male', '2000-08-09'),
('Eva', 'eva@example.com', 'Female', '1993-12-30');

select * from users;
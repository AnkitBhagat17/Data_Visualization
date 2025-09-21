# 📊 SQL Project

## 📌 Introduction
This project demonstrates the use of **SQL (Structured Query Language)** for creating and managing databases.  
It includes **basic SQL commands, schema, and sample queries**.

---

## ⚙️ Setup Instructions
1. Install MySQL (or any SQL database system).
2. Open your terminal and login:
   ```bash
   mysql -u root -p


🗄️ Database Commands

-- Create a new database
CREATE DATABASE project_db;

-- Show all databases
SHOW DATABASES;

-- Use a database
USE project_db;

-- Drop a database
DROP DATABASE project_db;

📋 Table Commands

-- Create a table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT
);

-- Show tables
SHOW TABLES;

-- Describe table structure
DESCRIBE users;

-- Drop a table
DROP TABLE users;

✍️ Data Manipulation (CRUD)

-- Insert data
INSERT INTO users (name, email, age)
VALUES ('Ankit', 'ankit@example.com', 25);

-- Select data
SELECT * FROM users;

-- Update data
UPDATE users SET age = 26 WHERE name = 'Ankit';

-- Delete data
DELETE FROM users WHERE name = 'Ankit';

🔍 Filtering & Sorting

SELECT * FROM users WHERE age > 25;
SELECT * FROM users ORDER BY age DESC;
SELECT * FROM users LIMIT 5;

🛠️ Aggregate Functions

SELECT COUNT(*) FROM users;
SELECT MAX(age) FROM users;
SELECT MIN(age) FROM users;
SELECT AVG(age) FROM users;

🔗 Joins Example

-- Create orders table
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product VARCHAR(100),
    price DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Insert data
INSERT INTO orders (user_id, product, price)
VALUES (1, 'Laptop', 50000);

-- Join users and orders
SELECT u.name, o.product, o.price
FROM users u
JOIN orders o ON u.id = o.user_id;

📌 Summary

    CREATE → Create DB/Table

    INSERT → Add data

    SELECT → Fetch data

    UPDATE → Modify data

    DELETE → Remove data

    JOIN → Combine tables

    COUNT, MAX, MIN, AVG → Aggregations


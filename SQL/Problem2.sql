CREATE DATABASE college_db;

USE college_db;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(30),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
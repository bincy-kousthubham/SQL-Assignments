#DDL Commands 

#1 Database and Table Creation (CREATE)

CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments(Department_id INT PRIMARY KEY, Department_name VARCHAR(100));
CREATE TABLE Location (Location_id INT PRIMARY KEY, location VARCHAR(30));
CREATE TABLE Employees(Employee_id INT PRIMARY KEY,
Employee_name VARCHAR(50),
Gender ENUM('M','F'),
Age INT, 
Hire_date DATE, 
Designation VARCHAR(100), 
Department_id INT, FOREIGN KEY(Department_id) REFERENCES Departments(Department_id), 
Location_id INT, FOREIGN KEY(Location_id) REFERENCES Location(Location_id), 
Salary DECIMAL(10,2)
);

SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Location;

#2 Table Alteration (ALTER)
ALTER TABLE Employees ADD COLUMN (Email VARCHAR(100));
ALTER TABLE Employees MODIFY COLUMN Designation VARCHAR(150);
ALTER TABLE Employees DROP COLUMN Age;
ALTER TABLE Employees RENAME COLUMN Hire_date TO Date_of_joining;

#3 Table Renaming (RENAME):

RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;

#4 Table Truncation (TRUNCATE)
TRUNCATE TABLE Employees;

#5 Database & Table Dropping (DROP)
DROP TABLE Employees;
DROP DATABASE employee;

#CONSTRAINTS -- 
#1 Database Recreation

CREATE DATABASE employee;
USE employee;

#2 Departments Table

CREATE TABLE Departments
(Department_id INT PRIMARY KEY, 
Department_name VARCHAR(100) UNIQUE NOT NULL);

#3 Location Table

CREATE TABLE Location 
(Location_id INT AUTO_INCREMENT PRIMARY KEY, 
location VARCHAR(30) UNIQUE NOT NULL);

#4 Employees Table

CREATE TABLE Employees(Employee_id INT PRIMARY KEY,
Employee_name VARCHAR(50) NOT NULL,
Gender VARCHAR(5) CHECK (Gender IN ('M','F')),
Age INT CHECK(Age>=18), 
Hire_date DATE DEFAULT(CURRENT_DATE()), 
Designation VARCHAR(100), 
Department_id INT, FOREIGN KEY(Department_id) REFERENCES Departments(Department_id), 
Location_id INT, FOREIGN KEY(Location_id) REFERENCES Location(Location_id), 
Salary DECIMAL(10,2)
);

DESC Employees;
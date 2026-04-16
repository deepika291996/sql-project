create DATABASE employee;
use employee;

CREATE table departments
(
department_id int primary key,
department_name varchar(100) not null unique);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    gender CHAR(1) CHECK (gender IN ('M','F')),
    designation VARCHAR(100),
    hire_date date default current_date,
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY designation VARCHAR(150);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
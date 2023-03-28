-- Create Table for Titles.csv
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);
SELECT * FROM titles;

-- Create Table for Employees.csv
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(10),
	hire_date DATE
);
SELECT * FROM employees;
-- CREATE Table for Departments.csv
CREATE TABLE departments (
	dept_no VARCHAR(10)PRIMARY KEY,
	dept_name VARCHAR(30)
);
SELECT * FROM departments;
-- CREATE Table for Dept_manager.csv
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);
SELECT * FROM dept_manager;
-- CREATE Table for Dept_emp.csv
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp;
-- CREATE Table for Salaries.csv
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries;


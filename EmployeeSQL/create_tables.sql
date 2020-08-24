-- DROP TABLE titles;

-- Create new table
CREATE TABLE titles (
	p_title_id SERIAL,
	title_id VARCHAR(10) UNIQUE NOT NULL,
	title VARCHAR(255),
	PRIMARY KEY (p_title_id)
);

-- -- View table columns and datatypes
-- SELECT * FROM titles;
-----------------------------------------------
-- -- DROP TABLE departments;

-- -- Create new table
CREATE TABLE departments (
	dept_id SERIAL,
	dept_no VARCHAR(10) UNIQUE NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_id)
);

-- -- View table columns and datatypes
-- SELECT * FROM departments;
-----------------------------------------------
-- DROP TABLE employees;

-- Create new table
CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title VARCHAR(10) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY(emp_title) REFERENCES titles(title_id)
);

-- -- View table columns and datatypes
-- SELECT * FROM employees;
------------------------------------------------
-- DROP TABLE salaries;

-- Create new table
CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	salary NUMERIC,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- -- View table columns and datatypes
-- SELECT * FROM salaries;
------------------------------------------------
-- DROP TABLE dept_emp;

-- Create new table
CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- -- View table columns and datatypes
-- SELECT * FROM dept_emp;
------------------------------------------------
-- DROP TABLE dept_managers;

-- Create new table
CREATE TABLE dept_managers (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

-- -- View table columns and datatypes
-- SELECT * FROM dept_managers;
-----------------------------------------------
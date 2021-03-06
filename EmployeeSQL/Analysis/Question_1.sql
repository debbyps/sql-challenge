/*
1.List the following details of each employee: 
employee number, last name, first name, sex, and salary.
*/
SELECT 
	e.emp_no
	, e.last_name
	, e.first_name
	, e.sex
	, cast(s.salary as money)
FROM employees e
INNER JOIN salaries s
	ON e.emp_no = s.emp_no
ORDER BY
	e.last_name, e.first_name
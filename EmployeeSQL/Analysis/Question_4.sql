/*
4. List the department of each employee with the following 
	information: employee number, last name, 
	first name, and department name.
*/
SELECT
	d.dept_no
	, d.dept_name
	, e.emp_no
	, e.last_name
	, e.first_name
FROM 
	employees e
	INNER JOIN dept_emp de
		ON	de.emp_no = e.emp_no
	INNER JOIN departments d
		ON	de.dept_no = d.dept_no
ORDER BY
	d.dept_name, e.last_name, e.first_name
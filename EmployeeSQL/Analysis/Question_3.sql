/*
3. List the manager of each department with the following information: 
	department number, department name, 
	the manager's employee number, last name, first name.
*/
SELECT
	d.dept_no
	, d.dept_name
	, e.emp_no
	, e.last_name
	, e.first_name
FROM 
	employees e
	INNER JOIN dept_managers dm
		ON	dm.emp_no = e.emp_no
	INNER JOIN departments d
		ON	dm.dept_no = d.dept_no
ORDER BY
	d.dept_name, e.last_name, e.first_name
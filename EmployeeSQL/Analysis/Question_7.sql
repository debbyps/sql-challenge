/*
7. List all employees in the Sales and Development 
	departments, including their employee number, 
	last name, first name, and department name.
*/
SELECT
	e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM 
	employees e
	INNER JOIN dept_emp de
		ON	de.emp_no = e.emp_no
	INNER JOIN departments d
		ON	de.dept_no = d.dept_no
WHERE 
	d.dept_name in ('Sales','Development')
ORDER BY
	d.dept_name, e.last_name, e.first_name
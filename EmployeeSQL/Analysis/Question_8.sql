/*
8. In descending order, list the frequency count 
	of employee last names, i.e., how many employees
	share each last name.
*/

SELECT
	e.last_name
	,count(e.emp_no) AS cnt
FROM
	employees e
GROUP BY
	e.last_name
ORDER BY
	cnt desc
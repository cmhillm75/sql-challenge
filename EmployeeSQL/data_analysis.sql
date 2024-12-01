--Question 1 List employee number, last name, first name, sex and salary.
SELECT
    employees.emp_no,
    employees.first_name,
    employees.last_name,
    employees.sex,
    salaries.salary
FROM
    employees
INNER JOIN
    salaries
ON
    employees.emp_no = salaries.emp_no;

--Question 2 List first name, last name and hire date for hire dates in 1986.
SELECT
	first_name,
	last_name,
	hire_date
FROM 
	employees
WHERE 
	EXTRACT(YEAR FROM hire_date) = 1986;

--Question 3 List manager for each dept with their dept number, dept name, 
--employee number, last name and first name.
SELECT
    dept_manager.dept_no,
    departments.dept_name,
    dept_manager.emp_no,
    employees.last_name,
    employees.first_name
FROM
    dept_manager 
INNER JOIN
    departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN
    employees ON dept_manager.emp_no = employees.emp_no;

--Question 4 List the department number, employee number, last name, first name & dept name.
SELECT
    dept_emp.dept_no,
    dept_emp.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM
    dept_emp
INNER JOIN
    employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN
    departments ON dept_emp.dept_no = departments.dept_no;

--Question 5 List first & last name & sex for first name = Hercules and last begins with B.
SELECT
	first_name,
	last_name
FROM
	employees
WHERE
	employees.first_name = 'Hercules'
	AND employees.last_name LIKE 'B%';

--Question 6 List all employees in sales with employee number with first and last name. 
SELECT
    employees.first_name,
    employees.last_name,
    employees.emp_no
FROM
    dept_emp
INNER JOIN
    employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN
    departments ON dept_emp.dept_no = departments.dept_no
WHERE
    departments.dept_name = 'Sales';

--Question 7 List all in the sales and development depts with first, last 
--employee number and dept name.
SELECT
    employees.first_name,
    employees.last_name,
    employees.emp_no,
    departments.dept_name
FROM
    dept_emp
INNER JOIN
    employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN
    departments ON dept_emp.dept_no = departments.dept_no
WHERE
    departments.dept_name IN ('Sales', 'Development');

--Question 8 is do a count of employees last name to determine how 
--many share last names in descending order.
SELECT
	last_name,
	COUNT(last_name) AS name_count
FROM 
	employees
GROUP BY 
	last_name
ORDER BY
	name_count DESC;

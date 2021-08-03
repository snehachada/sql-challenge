SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/01/01' AND '1986/12/31'
ORDER BY hire_date;

SELECT d.dept_name, d.dept_no, m.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_manager m
ON d.dept_no = m.dept_no
LEFT JOIN employees e 
ON m.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd007'
ORDER BY e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no
WHERE de.dept_no IN ('d005','d007')
ORDER BY e.emp_no;

SELECT last_name, count(*) frequency_count_of_employees
FROM employees
GROUP BY last_name
ORDER BY frequency_count_of_employees;
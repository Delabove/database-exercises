use employees;

SELECT
       departments.dept_name as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM employees
         JOIN dept_manager
              ON employees.emp_no = dept_manager.emp_no
         JOIN departments
              ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > curdate()
ORDER BY departments.dept_name;

SELECT
departments.dept_name as 'Department Name',
       Concat( employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM employees
JOIN dept_manager
     ON employees.emp_no = dept_manager.emp_no
JOIN departments
     ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > curdate() and employees.gender = 'F'
ORDER BY departments.dept_name;

SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
         JOIN dept_emp AS de ON de.emp_no = t.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE (d.dept_name = 'Customer Service' AND t.to_date = '9999-01-01' AND de.to_date = '9999-01-01')
GROUP BY Title;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary
FROM employees AS e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
         JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY `Department Name`;
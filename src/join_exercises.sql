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
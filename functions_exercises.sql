use employees;

# select *
# from employees
# WHERE first_name
# IN ('Irena', 'Vidya', 'Maya');




select concat_ws(first_name, ' ', last_name) AS 'full_name', gender, hire_date
from employees
where last_name
    LIKE 'E%'
   OR last_name LIKE '%e%'
ORDER BY emp_no desc ;





SELECT *,  datediff(curdate(), hire_date) AS ' days working at the company'
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;



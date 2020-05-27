use employees;

select *
from employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya');

select *
from employees
where last_name
LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date between '1990-01-01' and '1999-12-31';

SELECT *
FROM employees
WHERE birth_date like '%12-25';


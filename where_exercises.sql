use employees;

# select *
# from employees
# WHERE first_name
# IN ('Irena', 'Vidya', 'Maya');

select *
    from employees
    WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya';
    AND gender = 'M';


select *
    from employees
    where last_name
    LIKE 'E%'
    OR last_name LIKE '%E';


SELECT *
    FROM employees
    WHERE hire_date like '199%';

SELECT *
    FROM employees
    WHERE birth_date like '%12-25';

SELECT *
FROM employees
WHERE hire_date LIKE '199%'
  AND birth_date LIKE '%12-25';

SELECT *
    FROM employees
    WHERE last_name LIKE '%q%';

SELECT *
    FROM employees
    WHERE last_name LIKE ''
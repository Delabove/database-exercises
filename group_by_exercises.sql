use employees;

DESCRIBE employees;
describe titles;

SELECT DISTINCT title
FROM titles;

# walkthrough
select title from titles group by title;
# walkthroug
select title, count(*) from titles group by title;


select last_name
from employees
where last_name
    LIKE 'E%'
   AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;


select last_name, first_name
from employees
where last_name
    LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY first_name, last_name;

select last_name, COUNT(last_name)
from employees
where last_name
    LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name;

select COUNT(gender), gender
from employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
   group by gender;
use employees;

SELECT first_name,last_name From employees where first_name in ('Irena','Vidya','Maya') ORDER BY last_name,first_name DESC ;
SELECT first_name From employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';
SELECT first_name,emp_no FROM employees where last_name like 'E%' or last_name like '%E' order by emp_no DESC limit 20 offset 1;
SELECT first_name FROM employees where last_name like 'E%' and last_name like '%E';
SELECT first_name,last_name FROM employees where last_name like '%q%' and not last_name like '%qu%' order by first_name;

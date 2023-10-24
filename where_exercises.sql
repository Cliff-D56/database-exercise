use employees;

# SELECT first_name From employees where first_name in ('Irena','Vidya','Maya');
SELECT first_name From employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M';
SELECT first_name FROM employees where last_name like 'E%' or last_name like '%E';
SELECT first_name FROM employees where last_name like 'E%' and last_name like '%E';
SELECT first_name,last_name FROM employees where last_name like '%q%' and not last_name like '%qu%' order by first_name;

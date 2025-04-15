use employees;

SELECT datediff(curdate(),hire_date) From employees where month(birth_date)=12 and day(birth_date)=25 and year(hire_date) between 1990 and 1999 ORDER BY hire_date desc ;
SELECT first_name,last_name From employees where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya') and gender = 'M' order by last_name,first_name;
SELECT concat(first_name,' ',last_name) FROM employees where last_name like 'E%' or last_name like '%E' order by emp_no DESC limit 20 offset 1 ;
SELECT first_name FROM employees where last_name like 'E%' and last_name like '%E';
SELECT first_name,last_name FROM employees where last_name like '%q%' and not last_name like '%qu%' order by first_name;

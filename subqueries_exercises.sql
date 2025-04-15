Select * from employees
         where employees.employees.hire_date IN
               (SELECT employees.employees.hire_date from employees
                                                     where employees.employees.emp_no = 101010);

select * from titles
         where emp_no in
               (SELECT emp_no from employees
                              where first_name = 'Aamod' );

select first_name,last_name from employees
                            where gender = 'F'
                              and emp_no in
                                  (SELECT emp_no from dept_manager
                                                 where to_date = '9999-01-01');

select dept_name from departments
                 where dept_no in
                       (select dept_no from dept_manager where to_date = '9999-01-01'
                                                           and emp_no in
                                                               (select emp_no from employees
                                                                              where gender = 'F'));
select first_name, last_name from employees
                             where emp_no in
                                   (select emp_no from salaries where salary in (select max(salary) from salaries))


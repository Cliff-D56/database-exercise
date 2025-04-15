
# select * from users;
# select * from roles;
SELECT count(roles.name),roles.name from users right join roles on roles.id = users.role_id group by roles.name;
select * from employees.departments;
select * from employees.dept_manager;
select * from employees.employees;
select * from employees.dept_emp;
select * from employees.salaries;
#
SELECT  concat(e.first_name, ' ',e.last_name) as full_name, de.dept_name From employees.employees as e join employees.dept_manager as d on e.emp_no = d.emp_no right join employees.departments as de on d.dept_no = de.dept_no where to_date = '9999-01-01';
SELECT  concat(e.first_name, ' ',e.last_name) as full_name, de.dept_name From employees.employees as e join employees.dept_manager as d on e.emp_no = d.emp_no right join employees.departments as de on d.dept_no = de.dept_no where to_date = '9999-01-01' and gender = 'F';
SELECT t.title,count(t.title)from employees.titles as t
join employees.dept_emp as det on t.emp_no = det.emp_no
join employees.departments as de on det.dept_no = de.dept_no
where det.to_date = '9999-01-01' and t.to_date = '9999-01-01' and de.dept_name = 'Customer Service' group by title;
SELECT  concat(e.first_name, ' ',e.last_name) as full_name, de.dept_name,s.salary From employees.employees as e join employees.dept_manager as d on e.emp_no = d.emp_no right join employees.departments as de on d.dept_no = de.dept_no join employees.salaries as s on e.emp_no = s.emp_no where s.to_date = '9999-01-01' and d.to_date ='9999-01-01';

select concat(e.first_name, ' ',e.last_name) as full_name
     ,de.dept_name
     ,concat(m.first_name, ' ',m.last_name) as manager
from employees.employees as e
    join employees.dept_emp as det on e.emp_no = det.emp_no
    join employees.departments as de on det.dept_no = de.dept_no
    join employees.dept_manager as dm on de.dept_no = dm.dept_no
    join employees.employees as m on dm.emp_no = m.emp_no
where
    dm.to_date='9999-01-01' and
    det.to_date='9999-01-01'
order by dept_name, e.emp_no
;

# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('roland', 'roland@example.com', 2),
#                                              ('java', 'java@example.com', 2),
#                                              ('clifford', 'clifford@example.com',2),
#                                              ('papa', 'papa@example.com', null);



CREATE TABLE movies
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    time_in_minutes INT NOT NULL,
    description TEXT NOT NULL
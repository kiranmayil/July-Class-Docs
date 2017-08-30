	select * from employees;
	
Select * from employees;

select first_name, last_name from employees;

select * from employees where first_name='Neena';

select * from employees order by hire_date asc;

select * from employees order by hire_date desc;

select * from employees order by manager_id asc,salary desc;


select * from employees where commission_pct is  null;

select * from employees where first_name like '%Joh%';


delete from employees_new;

select * from employees_new;

rollback;

describe employees_new;

insert into employees_new values (1, 'tina', 7878798, 'a@a.com', 'HR');

insert into employees_new values (2, 'JOe', 7878798, 'a@c.com', 'HR');

truncate table employees_new;

create table products(id integer, name varchar(20));

truncate table employees_new;

select * from employees_new;

drop table employees_new;

describe employees_new;

select * from customers;

update customers set cust_name='John' where cust_id=1;


select * from employees;

select employee_id, first_name, salary, (salary+10)*2 as incsalary from employees;

-- employyes who are it programmers
select * from employees where job_id='IT_PROG';

-- employees who joined after year 1998...
select * from employees where hire_date>'1998-12-31';

-- employees whose salary is > 10000
select * from employees where salary > 10000;

-- employees who have commission pct between 0.5 and 5
select * from employees where commission_pct between 0.4 and 5;

-- employees who joined between 1998 and 2000

-- employees who are it programmers and  whose salary is >5000 
select * from employees where salary>5000 and job_id='IT_PROG';


-- employees who are it programmers or  whose salary is >5000 
select * from employees where salary>5000 or job_id='IT_PROG';

-- employees who are not IT programmers
select * from employees where job_id != 'IT_PROG';

-- employees who are IT programmers, HR and clerks
select * from employees where job_id in ('IT_PROG', 'ST_CLERK', 'HR_REP');


-- employees who are  not IT programmers, HR and clerks
select * from employees where job_id not in ('IT_PROG', 'ST_CLERK', 'HR_REP');

-- get full name of all employees
select concat(first_name, '_', last_name) as fullname from employees;

-- get all unique last names
select distinct last_name from employees;

-- we want employers whose firstname start with 'a' and ends with 'n'
select * from employees where first_name like 'a%n'



	


delete from employees_new;

select * from employees_new;

describe employees_new;

insert into employees_new values (1, 'tina', 7878798, 'a@a.com', 'HR');

insert into employees_new values (2, 'JOe', 7878798, 'a@c.com', 'HR');




select employee_id, first_name, salary, (salary+10)*2 as incsalary from employees;

-- employyes who are it programmers
select * from employees where job_id='IT_PROG';

-- employees who joined after year 1998...
select * from employees where hire_date>'1998-12-31';

-- employees whose salary is > 10000
select * from employees where salary > 10000;

-- employees who have commission pct between 0.5 and 5
select * from employees where commission_pct between 0.4 and 5;

-- employees who joined between 1998 and 2000

-- employees who are it programmers and  whose salary is >5000 
select * from employees where salary>5000 and job_id='IT_PROG';


-- employees who are it programmers or  whose salary is >5000 
select * from employees where salary>5000 or job_id='IT_PROG';

-- employees who are not IT programmers
select * from employees where job_id != 'IT_PROG';

-- employees who are IT programmers, HR and clerks
select * from employees where job_id in ('IT_PROG', 'ST_CLERK', 'HR_REP');


-- employees who are  not IT programmers, HR and clerks
select * from employees where job_id not in ('IT_PROG', 'ST_CLERK', 'HR_REP');

-- get full name of all employees
select concat(first_name, '_', last_name) as fullname from employees;

-- get all unique last names
select distinct last_name from employees;

-- we want employers whose firstname start with 'a' and ends with 'n'
select * from employees where first_name like 'a%n'






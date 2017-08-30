select * from employees where upper(email)='SKING';

select * from employees where email=upper('sking');

-- in oracle
-- select upper('john') from dual;

select upper('john');

select upper('john'), lower('john');

select length(concat('java','script'));

select instr('java','a');

select lpad('java',10,'*');

select rpad('java',10,'*');

select length(trim('    java    ')), length('    java    ');

select trim('H' FROM 'HelloWorldH');

select REPLACE('JACK and JUE','J','BL');

select first_name, instr(first_name, 'a') from employees;

SELECT ROUND(45.923,2), ROUND(45.923,0);

SELECT ROUND(45.92545465,3), ROUND(45.423,0);

-- <5 - same number, >=5 - number+1

select ROUND(44.923,-1);
-- -1 - tens place - if number in tens place >= half of ten  rounds to nearest ten

select ROUND(1552.923,-2);
-- -2 - hundreds place - if number in hundreds place >= half of hundred  rounds to nearest hundred

select truncate(45.456,2),truncate(45.456,0),truncate(47.456,-1);

-- remainder
select mod(9,2) as remainder, 50/2 as quotient;

-- date functions

-- yyyy-mm-dd
select * from employees where hire_date>'1987-06-01';

select sysdate();

select subdate(sysdate(), interval 1 month);

select adddate(sysdate(), interval 100 day);

select adddate('2017-01-30', interval 7 day);

select datediff('2017-02-20','2017-01-30');

-- find current year, month, day
select extract(year from sysdate()), extract(month from sysdate()), extract(day from sysdate()) ;

select dayofmonth(sysdate()),dayofweek('2017-01-06'),dayofyear(sysdate());

select curdate(), sysdate(),CURRENT_TIME();

select dayname(sysdate());

select date_format(curdate(),"%d/%m/%y");

select date_format(CURRENT_TIME(), "%h:%i:%s %p");


select date_format(sysdate(),"%d/%m/%y %h:%i:%s %p");

select date_format(CURRENT_TIME(), '%r');

select time_format('11:00',"%r");

-- find first day of following month
select adddate(last_day(sysdate()), interval 1 day);

SELECT CONVERT_TZ('2004-01-01 12:00:00','GMT','MET');

describe employees;

select * from employees where salary>'2400';

select * from hr.employees where employee_id='100';


select 	* 
from 	employees 
where 	hire_date between '1998-01-01' and '2000-01-01';

select 	* 
from 	employees emp_no
where 	hire_date between Date('1998-01-01') and Date('2000-01-01');

-- calculate emplouee's salary after increment
select salary,commission_pct,salary +(ifnull(commission_pct,0)*salary) incsalary from employees;

select commission_pct, ifnull(commission_pct,0) from employees;

-- simple if else 
select commission_pct, if(commission_pct>0.3, 'good', 'avg') rating from employees;

SELECT first_name, LENGTH(first_name) ,last_name, LENGTH(last_name),

NULLIF(LENGTH(first_name), LENGTH(last_name)) result

FROM employees;

-- returns null if both arguments are equal, ese it returns first arg value
select NULLIF('hello','hello');

SELECT last_name,manager_id,commission_pct,

COALESCE(manager_id,commission_pct, -1) comm

FROM employees

ORDER BY commission_pct;

-- first not null value from given list of values, we can also give default not null value at the end
select COALESCE(null, null , 'helllo', 0);

SELECT last_name, job_id, salary,

CASE job_id WHEN 'IT_PROG' THEN 1.10*salary

WHEN 'ST_CLERK' THEN 1.15*salary

WHEN 'SA_REP' THEN 1.20*salary

ELSE salary END 'REVISED_SALARY'

FROM employees;

-- single row functions- mutiple rows as input- we get multiple rows as output- one result per row
select lower(first_name) from employees;

-- multiple rows as input, one result as output
select avg(salary) from employees;

select max(salary) from employees;

select min(salary) from employees;

select sum(salary) from employees;

-- no of employees who have salary > 10000
select count(*) from employees where salary>10000;

-- max salry under each department
select max(salary), department_id from employees group by department_id;

select max(salary), department_id from employees group by department_id having department_id=40;

select max(salary), department_id, job_id from employees group by department_id, job_id;


select department_id, job_id from employees;






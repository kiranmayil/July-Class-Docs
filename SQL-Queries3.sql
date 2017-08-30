select * from employees;
select * from departments;

select employee_id, first_name, last_name, department_id, department_name
from employees
natural join departments;

SELECT department_id, department_name,
location_id, city
FROM departments
NATURAL JOIN locations;

SELECT department_id, department_name,
location_id, city
FROM departments
JOIN locations using (location_id);

SELECT department_id, department_name,
location_id, city
FROM departments d
JOIN locations l on (d.location_id = l.location_id);

SELECT e.employee_id, e.last_name, e.department_id,
d.location_id, d.manager_id, d.department_id
FROM employees e JOIN departments d
ON (e.department_id = d.manager_id);

SELECT e.employee_id, e.last_name, e.department_id,
d.location_id, d.manager_id, d.department_id
FROM employees e Inner JOIN departments d;

SELECT e.last_name emp, m.last_name mgr
FROM employees e JOIN employees m
ON (e.manager_id = m.employee_id);

select employee_id emp, first_name fir, last_name las, manager_id
from employees;

SELECT e.employee_id, e.last_name, e.department_id,
d.department_id, d.location_id, e.manager_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
AND e.manager_id = 149 ;

select employee_id, city, department_name
FROM employees e
Left JOIN departments d
ON d.department_id = e.department_id
And e.employee_id=200
left JOIN locations l
ON d.location_id = l.location_id;

SELECT e.last_name, e.department_id, d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id);


SELECT e.last_name, e.department_id, d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON (e.department_id = d.department_id) ;

SELECT last_name, department_name
FROM employees
CROSS JOIN departments ;

#Write a query to fetch  empname, deptname and deptid  
#of all the departments with and without employees.
select first_name, last_name, department_name, department_id 
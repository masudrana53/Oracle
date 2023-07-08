CREATE VIEW emp_depId_80
as

select* from employees
WHERE department_id=80;



select* from employees;
select* from locations;
select* from departments;



CREATE VIEW emp_loc
AS
SELECT e.first_name, e.phone_number, e.salary, l.street_address, l.country_id,
FROM employees e 

JOIN departments d
    ON (e.department_id = d.department_id)
    
JOIN locations l
    ON (d.location_id = l.location_id)
WHERE e.department_id = 60;

SELECT* FROM emp_loc;
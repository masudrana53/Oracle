-- Natural Join From multiple table 

SELECT * FROM employees NATURAL join jobs;

SELECT first_name, salary, job_title FROM employees NATURAL join jobs;

SELECT first_name, salary, job_title FROM employees NATURAL join jobs
    WHERE salary <10000;

SELECT l.city, d.department_name
FROM locations l JOIN departments d USING (location_id)
WHERE location_id = 1400;


SELECT e.employee_id, e.last_name, e.department_id, 
d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

SELECT e.employee_id, e.last_name, d.location_id, department_id, manager_id      
FROM  employees e NATURAL JOIN departments d; 


SELECT employee_id, city, department_name
FROM employees e 
JOIN departments d
ON d.department_id = e.department_id 
JOIN locations l
ON d.location_id = l.location_id;


SELECT employee_id, city, department_name
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id;


SELECT worker.last_name emp, manager.last_name mgr
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);


SELECT e.last_name, e.department_id, d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON (e.department_id = d.department_id);


SELECT last_name, hire_date
FROM employees 
WHERE hire_date > (SELECT hire_date 
FROM employees
WHERE last_name = 'Davies');


SELECT last_name, hire_date
FROM employees
WHERE hire_date > (SELECT hire_date
FROM employees
WHERE last_name = 'Davies')
FETCH FIRST 1 ROW ONLY;



SELECT *
FROM employees
WHERE salary = 3000
AND manager_id = 121;


-- From the following table. write a SQL query to find those employees whose ID matches any of the numbers 134. Return all the fields. 
SELECT *
FROM employees
WHERE employee_id IN(134, 159, 183);



SELECT *
FROM employees
WHERE salary BETWEEN 1000 and 3000
ORDER BY salary;


-- From the following table and wirte a SQL query to find those employees whoe salary falls within the rang of the smallest salary and 2500 Return all the fields 
SELECT *
FROM employees
WHERE salary <= 2500
ORDER BY salary;


-- Find those employees who do not work in the departments wehre manager IDs are between 100 and 200 (Begin and end values are included.) Return all the fields of the employees 
SELECT *
FROM employees 
WHERE manager_id NOT BETWEEN 100 AND 200


-- Form the following table. write a SQL query to find those employees who get second highest salary Return all fields of the employees. USING SUB-QUIRIES

SELECT *
FROM employees 

WHERE salary =(SELECT MAX (salary)
FROM employees

WHERE salary <(SELECT MAX (salary)
FROM employees));


-- Form the following table. write a SQL query to find those employees who get 3rd highest salary Return all fields of the employees.
SELECT *
    FROM employees
            WHERE  salary = (SELECT MAX(salary)
                FROM employees
            WHERE salary < (SELECT MAX(salary)
                FROM employees                
            WHERE salary < (SELECT MAX(salary)
                FROM employees)));


-- Form the follwing table, write a SQL query to find those employees who work in the same department as 'Clara'. Exclude all those records where first name is 'Clara'. Return first name, last name and hire date

SELECT first_name, last_name, hire_date
    FROM employees
    WHERE department_id=(SELECT department_id
            FROM employees 
            WHERE first_name ='Clara')
            AND first_name!= 'Clara';


-- From the following tables. Write a SQL query to find those employees who work in a department where the employee's first name contains the letter 'T' Return employee ID, FIRST NAME AND LAST NAME.
SELECT employee_id, first_name, last_name, department_id
    FROM employees
        WHERE department_id IN(SELECT department_id
            FROM employees
                WHERE first_name LIKE '%T%');    
                
                --ANOTHER ONE CONTAINING 'T' 
SELECT employee_id, first_name, last_name, department_id
    FROM employees
        WHERE first_name LIKE '%T%';


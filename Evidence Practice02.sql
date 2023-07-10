
----13. From the following tables, write a SQL query to find those employees 
--who work in the same department as �Clara�. Exclude all those records where first name 
--is �Clara�. Return first name, last name and hire date.
SELECT first_name, last_name, hire_date, department_id
FROM employees

WHERE department_id = 
(SELECT department_id
    FROM employees
    WHERE first_name = 'Clara')
AND first_name <> 'Clara';







----13. From the following tables, write a SQL query to find those employees 
--who work in the same department as �Clara�. Exclude all those records where first name 
--is �Clara�. Return first name, last name and hire date.
SELECT first_name, last_name, hire_date
FROM employees

WHERE department_id = 
(SELECT department_id
FROM employees
WHERE first_name = 'Clara')
AND  first_name <> 'Clara';


--14. From the following tables, write a SQL query to find those employees who work in a department where the 
--employee�s first name contains the letter 'T'. Return employee ID, first name and last name.
SELECT employee_id, first_name, last_name
FROM employees

WHERE department_id IN (SELECT department_id
FROM employees
WHERE first_name LIKE '%T%');


--14. From the following tables, write a SQL query to find those employees who work in a department where the 
--employee�s first name contains the letter 'T'. Return employee ID, first name and last name.


--15. From the following tables, write a SQL query to find those employees who earn more 
-- than the average salary and work in 
--the same department as an employee whose first name contains the letter 'J'. 
--Return employee ID, first name and salary.
SELECT employee_id, first_name, salary
FROM employees

WHERE salary > (SELECT avg(salary)
    FROM employees)

AND department_id IN (SELECT department_id
    FROM employees
        WHERE first_name LIKE '%J%');

--15. From the following tables, write a SQL query to find those employees who earn more than the average salary and work in 
--the same department as an employee whose first name contains the letter 'J'. 
--Return employee ID, first name and salary.
SELECT employee_id, first_name , salary  
FROM employees  
WHERE salary > (SELECT AVG (salary)  
FROM employees )

AND  department_id IN ( SELECT department_id  
FROM employees  
WHERE first_name LIKE '%J%');



----16. From the following table, write a SQL query to find those employees whose department is located at �Toronto�. 
--Return first name, last name, employee ID, job ID.
SELECT first_name, last_name, employee_id, job_id
FROM employees

WHERE department_id = (SELECT department_id
    FROM departments

WHERE location_id = (SELECT location_id
    FROM locations
WHERE city = 'Toronto'));


--16. BY JOIN QUERY
SELECT e.first_name, e.last_name, e.employee_id, e.job_id
FROM employees e

JOIN departments d ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id
WHERE l.city = 'Toronto';



--17. From the following table, write a SQL query to find those employees whose salary is lower than that of employees 
--whose job title is �MK_MAN�. Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id
FROM employees

WHERE salary < (SELECT salary
FROM employees
WHERE job_id = 'MK_MAN');


--20. From the following table, write a SQL query to find those employees whose salaries are higher than the average for all departments. 
--Return employee ID, first name, last name, job ID.
SELECT employee_id, first_name, last_name, job_id
FROM employees
WHERE salary > ALL 
(SELECT avg(salary)
FROM employees
GROUP BY department_id);


SELECT avg(salary)
FROM employees
Group By department_id;


--22. From the following table, write a SQL query to calculate total salary of the departments 
--where at least one employee works. Return department ID, total salary.
SELECT department_id, sum(salary) "Total salary"
FROM employees
GROUP BY department_id
HAVING (department_id is not null);



--20. From the following table, write a SQL query to find those employees whose salaries are higher than the average for all departments. 
--Return employee ID, first name, last name, job ID.
SELECT first_name, last_name, job_id
FROM employees

WHERE salary > ALL(SELECT AVG(salary)
FROM employees
GROUP BY department_id);

----02.. Create a report that displays the employee number, last_name, salary of all employees who earn more than the average salary. 
--Sort the results in ascending order by salary.
SELECT employee_id, last_name, salary
FROM employees

WHERE salary > (SELECT avg(salary)
FROM employees)
ORDER BY salary;





------03.. Write a query that displays the employee number and last name of all employees who work in a department 
--with any employee whose last name contains the letter "u".
SELECT employee_id, last_name
FROM employees

WHERE department_id IN (SELECT department_id
FROM employees
WHERE last_name LIKE '%u%');








SELECT*
FROM employees;
SELECT*
FROM departments;
SELECT*
FROM locations;
SELECT*
FROM jobs;

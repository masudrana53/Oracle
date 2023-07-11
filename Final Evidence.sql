--Question 03. Displaying the ename, salary of all employes whose salary is equal to the minimum salary?
SELECT first_name, salary 
FROM employees 
WHERE salary = (SELECT min(salary)
FROM employees);


----Question 04. Displays the department numbers and average salaries for those departments 
--with a maximum salary that is greater than 12000?     
SELECT department_id, avg(salary),MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 12000;


-- Question 05. Create a query that displays ename, job_title, salary where salary is salary plus 30 percent bonus.
SELECT first_name, job_title, (salary+salary*0.3) AS "Salary"
FROM employees e
JOIN jobs j
ON j.job_id = e.job_id;



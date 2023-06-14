        
SELECT
    DEPARTMENT_ID, LOCATION_ID
        FROM DEPARTMENTS;

SELECT
    LAST_NAME, SALARY, SALARY*12 "Anual_Salary"
        FROM EMPLOYEES;
        
SELECT
    LAST_NAME, SALARY, JOB_ID, COMMISSION_PCT
        FROM EMPLOYEES;

        
SELECT
    last_name ||' is a '||job_id
        As "Employee Details"
            FROM employees;
            
SELECT
    last_name ||' '||job_id As "Employee Details"
        FROM employees;

SELECT
    last_name ||' is a '||job_id As "Employee Details", first_name ||' '|| last_name "Full Name"
        FROM employees;

SELECT
    Department_id
        FROM employees;

SELECT DISTINCT
    Department_id
        FROM employees;
        
DESCRIBE employees

SELECT * 
    FROM employees
        WHERE hire_date = '17-OCT-03' ;


SELECT *
    FROM employees
        WHERE SALARY BETWEEN 1000 AND 15000;


SELECT employee_id, last_name, salary, manager_id
    FROM employees
        WHERE salary IN (10000, 11001, 20001);


SELECT employee_id, last_name, salary, manager_id
    FROM employees
        WHERE manager_id IN (100, 101, 201) ;


SELECT last_name, hire_date
    FROM employees
        WHERE hire_date LIKE '%05';
        

SELECT first_name
    FROM employees
        WHERE first_name LIKE 'S%';
        

SELECT first_name
    FROM employees
        WHERE first_name LIKE '__a%';


SELECT first_name, salary
    FROM employees
        WHERE salary >=11000;
        
        
SELECT last_name, department_id, salary
FROM employees
    WHERE department_id = 60
    OR department_id = 80
    AND salary > 10000;
    
    
    
SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date ;
        





        
        

            



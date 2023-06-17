        
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



SELECT employee_id, last_name, salary, department_id  
    FROM employees
        WHERE employee_id = &employee_num ;



SELECT first_name|| '' ||last_name "Full Name", salary*12 "Annual salary"
 FROM employees
    WHERE salary*12<100000;



SELECT 'My full name is ' ||first_name|| ' ' ||last_name "Full Name", salary*12 "Annual salary"
    FROM employees
        WHERE salary*12>10000;


SELECT last_name, department_id, salary
    FROM employees
        ORDER BY department_id, salary DESC



-- upper or lower case used
SELECT 
   initcap('MY Full Name is '||first_name|| ' ' ||last_name) "Full Name", salary*12 "Annual Salary"
    FROM employees
        WHERE salary*12 >10000;
        




-- 17-06-2023 

SELECT
    SUBSTR('Hello World',-3,2)
    FROM dual;


SELECT
   LENGTH('HelloWorld')
    FROM dual;


SELECT
    first_name, INSTR(first_name, 'l')
    FROM employees;


SELECT
    first_name, SUBSTR(first_name, 1, LENGTH(first_name)-2)
    FROM employees;  


SELECT
    lpad(first_name,12,'#')    
    FROM employees;


SELECT
    rpad(first_name,12,'-')
    FROM employees;


SELECT
    lpad('MASUD',15,'*')
    FROM dual;


SELECT sysdate
FROM dual;


SELECT SESSIONTIMEZONE, CURRENT_DATE-35 
FROM DUAL;


SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP 
FROM DUAL;


CREATE TABLE Masud(
ID number, NAME varchar2(20), EMAIL varchar2(25), PHONE number);
insert into Masud(ID,NAME,EMAIL,PHONE)
values(101,'Masud_Rana','masudn@gd.com','01937420091')

SELECT *
FROM Masud



SELECT last_name, department_id,
UPPER(CONCAT(SUBSTR (LAST_NAME, 1, 8), '_US'))
FROM employees
WHERE department_id = 60;


SELECT ROUND(45.991, 2)
    FROM dual;
 
    
SELECT TRUNC(45.926, 2)
    FROM dual;

    
SELECT TRUNC(45.923,2), TRUNC(45.923),
TRUNC(45.923,-1)
FROM DUAL;






        
        

            



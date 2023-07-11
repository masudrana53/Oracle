----Make a table with your name. and add the following fields with the appropriate data type e id, e name, e dob, e hire date, salary. 
--Make e id auto increment e id will start from 101.
CREATE SEQUENCE msud_1112
START WITH 101
INCREMENT BY 1
MAXVALUE 1000
NOCACHE
NOCYCLE;

CREATE TABLE mm_asud(
    e_id NUMBER DEFAULT msud_1112.NEXTVAL NOT NULL,
    e_name VARCHAR2 (30),
    e_dob DATE,
    e_hire_date DATE,
    salary number (8,2)        
);

INSERT INTO mm_asud(e_name, e_dob, e_hire_date, salary)
VALUES('Masud', '02-FEB-1996', '11-NOV-2021', 2010.00);
INSERT INTO mm_asud(e_name, e_dob, e_hire_date, salary)
VALUES('Masud', '02-FEB-1996', '11-NOV-2021', 2010.00);
INSERT INTO mm_asud(e_name, e_dob, e_hire_date, salary)
VALUES('Masud', '02-FEB-1996', '11-NOV-2021', 2010.00);
INSERT INTO mm_asud(e_name, e_dob, e_hire_date, salary)
VALUES('Masud', '02-FEB-1996', '11-NOV-2021', 2010.00);
INSERT INTO mm_asud(e_name, e_dob, e_hire_date, salary)
VALUES('Masud', '02-FEB-1996', '11-NOV-2021', 2010.00);

SELECT*
FROM mm_asud;




--QUESTION 03. What is the query to fetch the last record from the table?
SELECT*
FROM mm_asud
ORDER BY e_id DESC
FETCH FIRST 1 ROW ONLY;

--QUESTION 03.(ANOTHER WAY) What is the query to fetch the last record from the table?
SELECT*
FROM mm_asud
WHERE rowid=(SELECT MAX(rowid) FROM mm_asud);

--QUESTION 03.(BY OFFSETING)
SELECT*
FROM mm_asud
OFFSET 4 ROWS FETCH NEXT 1 ROW ONLY;




--QUESTION 04. Write an sql query to print details of the workers whose e_name contains 'a'.
SELECT e_name
FROM mm_asud
WHERE e_name LIKE '%a%';


--QUESTION 05. Write a sql query to find the employees who earn less than the employee of ID 182. Return the first_name, last_name, salary.
SELECT first_name, last_name, salary
FROM employees
WHERE salary <(SELECT salary
FROM employees
WHERE employee_id = 182);


-- --QUESTION 06. Write a sql query to calculate the average salary, the number of employees 
-- receiving commissions in that department. Return the department name, average salary and 
-- number of employees.
SELECT d.department_name, round(avg(salary),2) "Average Salary", count(employee_id) "Number of Employees"
    FROM employees e JOIN departments d
        ON (e.department_id = d.department_id)
        WHERE e.employee_id IN (SELECT employee_id
                                    FROM employees
                                        WHERE e.commission_pct  IS NOT NULL)
        GROUP BY d.department_name;

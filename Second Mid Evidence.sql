--1.	Create a table and name using your ID preceded by emp (as emp106588), which have 5 fields as eid, ename, salary, hire_date and address with appropriate data types and create primary key on eid.                                                                          
CREATE TABLE emp1277593(
    eid INT CONSTRAINT eid_pk PRIMARY KEY,
    ename VARCHAR2(25),
    salary NUMBER(8,2),
    hire_date DATE,
    address VARCHAR2(50)
);

--2.	Add two new columns named ‘department_id’ ,’dept_name’  ALTER Table Command.                                                                                                                         
ALTER TABLE emp1277593
ADD (department_id NUMBER(4), department_name VARCHAR2(20));


--3.	Insert values to the table.
INSERT INTO emp1277593 (eid, ename, salary, hire_date, address, department_id, department_name)
VALUES (1, 'Masud', '2353.65', '15-Mar-2016', 'Mirpur', 90, 'Marketing');

INSERT INTO emp1277593 (eid, ename, salary, hire_date, address, department_id, department_name)
VALUES (2, 'Rana', '3742.22', '18-Jun-2017', 'Gulshan', 92, 'Accounting');

INSERT INTO emp1277593 (eid, ename, salary, hire_date, address, department_id, department_name)
VALUES (3, 'Hasn', '34545.99', '22-Feb-2019', 'Badda', 80, 'English');

SELECT* FROM emp1277593;


--4.	Create a view that which contains ename , dept_name and salary in department 80.                                                                                                                                       
CREATE VIEW empv_12775
AS
SELECT ename, department_name, salary
FROM emp1277593
WHERE department_id = 80

SELECT* FROM empv_12775;


--5.	Create a sequence?
CREATE SEQUENCE emps_1212
START WITH 100
INCREMENT BY 1;


--6.	Give an appropriate example of insert data from subqueries  .
INSERT INTO emp1277593 (eid, ename, salary, hire_date, address, department_id, department_name)
SELECT employee_id, first_name, salary, hire_date, city, d.department_id,  department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON l.location_id = d.location_id
WHERE d. department_id = 20
FETCH FIRST 6 ROWS ONLY;

SELECT* FROM emp1277593;






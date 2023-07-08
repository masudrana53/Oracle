CREATE SEQUENCE empll_sid
START WITH 2001
INCREMENT BY 1
MAXVALUE 20000
NOCACHE
NOCYCLE;

CREATE TABLE emp111_sid(
s_id INT PRIMARY KEY,
s_name VARCHAR2 (30),
s_email VARCHAR2 (35),
s_dob date,
s_address VARCHAR2 (30)
);

INSERT INTO emp111_sid
VALUES(empll_sid.nextval, 'MASUD', 'masud@gmailcom', '11-MAR-2001', 'Badda');

INSERT INTO emp111_sid
VALUES(empll_sid.nextval, 'MASUD', 'masud@gmailcom', '11-MAR-2001', 'Badda');

SELECT* FROM emp111_sid;



-- Below is SEQUENCE with TABLE

CREATE SEQUENCE emp_222_sid
START WITH 1001
INCREMENT BY 1
MAXVALUE 9999
NOCACHE
NOCYCLE;

CREATE TABLE student_information(
s_id int primary key,
s_name VARCHAR2(30),
s_email VARCHAR2(35),
s_dob date,
s_address VARCHAR2(50)
);

INSERT INTO student_information
VALUES(emp_222_sid.nextval, 'Masud', 'masud@gmail.com', '11-Mar-2000', 'Mirpur'); 
INSERT INTO student_information
VALUES(emp_222_sid.nextval, 'Rana', 'rana@gmail.com', '11-Mar-2000', 'Gulshan');
INSERT INTO student_information
VALUES(emp_222_sid.nextval, 'Jahir', 'jahir@gmail.com', '11-Mar-2000', 'Mirpur');
INSERT INTO student_information
VALUES(emp_222_sid.nextval, 'Fatema', 'fatema@gmail.com', '11-Mar-2000', 'Mirpur');
INSERT INTO student_information
VALUES(emp_222_sid.nextval, 'Tonmoy', 'tonmoy@gmail.com', '11-Mar-2000', 'Mirpur');

SELECT* FROM student_information;
commit;







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
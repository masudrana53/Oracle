CREATE TABLE masud_2(
ID int primary key,
S_NAME VARCHAR2(30),
EMAIL VARCHAR2(30),
SALARY NUMBER (8,2),
HIRE_DATE DATE 
);

--COLUMN ADD
ALTER TABLE masud_2
ADD
(Job_id VARCHAR2 (10));

ALTER TABLE masud_2
ADD
(Gender VARCHAR2 (10));

ALTER TABLE masud_2
ADD
(Possition VARCHAR2 (10));

--COLUMN RENAME
ALTER TABLE masud_2
RENAME COLUMN EMAIL TO S_Email;


INSERT INTO masud_2(ID, S_NAME, EMAIL, SALARY, HIRE_DATE)
VALUES(1, 'MASUD', 'masud@gmail.com', 200.55, '11-MAR-2005');

INSERT INTO masud_2(ID, S_NAME, EMAIL, SALARY, HIRE_DATE)
VALUES(2, 'RANA', 'rana@gmail.com', 211.55, '15-APR-2006');

INSERT INTO masud_2
VALUES(102, 'RANA', 'rana@gmail.com', 2001.66, sysdate);

UPDATE masud_2
SET Gender='Female'
WHERE ID=1;

UPDATE masud_2
SET Gender='Male'
WHERE ID=102;


UPDATE masud_2
SET Gender='Female'
WHERE ID=2;

DELETE masud_2
WHERE ID=2;

ROLLBACK;

SELECT*
FROM masud_2;


COMMIT;

SELECT first_name, last_name, employee_id, salary
FROM employees
WHERE salary >
    (SELECT salary 
    FROM employees 
    WHERE employee_id = 163);
    

SELECT first_name, last_name
FROM employees

WHERE salary >
(SELECT salary
FROM employees
WHERE employee_id = 163);

    


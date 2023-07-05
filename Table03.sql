CREATE TABLE masud_1(
ID int primary key,
S_NAME VARCHAR2(30),
EMAIL VARCHAR2(30),
SALARY NUMBER (8,2),
HIRE_DATE DATE 
);

INSERT INTO masud_1
VALUES(1, 'MASUD', 'masud@gmail.com', 1020.00, '11-MAR-2000');

INSERT INTO masud_1
VALUES(2, 'RANA', 'rana@gmail.com', 1021.11, '12-MAR-2001');

INSERT INTO masud_1
VALUES(3, 'HASAN', 'hasan@gmail.com', 1022.22, '13-APR-2002');

INSERT INTO masud_1
VALUES(4, 'JAHIR', 'jahir@gmail.com', 1023.33, '14-MAR-2003');

INSERT INTO masud_1
VALUES(5, 'FATEMA', 'fatema@gmail.com', 1024.44, '15-APR-2004');

INSERT INTO masud_1
VALUES(6, 'TAMAIM', 'tamim@gmail.com', 1025.55, '16-MAY-2005');

UPDATE masud_1 SET
S_NAME='JUNAYED',
SALARY=200000
WHERE ID=1;

DELETE FROM masud_1
WHERE ID=6;

truncate TABLE masud_1;
drop TABLE masud_1;
ROLLBACK;


SALARY=(SELECT SALARY FROM masud_1 WHERE S_NAME = 'JAHIR')
WHERE ID = 1;



SELECT*
FROM masud_1;



CREATE TABLE





commit;



SELECT last_name, hire_date
FROM employees
WHERE hire_date > (SELECT hire_date
FROM employees
WHERE last_name = 'Davies')
FETCH FIRST 1 ROW ONLY;


SELECT  last_name
FROM employees
WHERE last_name LIKE 'S%';




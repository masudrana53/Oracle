CREATE TABLE masud_2(
ID int primary key,
S_NAME VARCHAR2(30),
EMAIL VARCHAR2(30),
SALARY NUMBER (8,2),
HIRE_DATE DATE 
);

ALTER TABLE masud_2
ADD
(Job_id VARCHAR2 (10));

ALTER TABLE masud_2
ADD
(Gender VARCHAR2 (10));


INSERT INTO masud_2(ID, S_NAME, EMAIL, SALARY, HIRE_DATE)
VALUES(1, 'MASUD', 'masud@gmail.com', 200.55, '11-MAR-2005');

INSERT INTO masud_2
VALUES(102, 'RANA', 'rana@gmail.com', 2001.66, sysdate);

SELECT*
FROM masud_2;




COMMIT;
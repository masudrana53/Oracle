CREATE TABLE masud_1277593(

eid int primary key,
ename VARCHAR2(30),
salary NUMBER(8,2),
hire_date DATE,
address VARCHAR2(50)
);

INSERT INTO masud_1277593 VALUES(
1, 'MASUD', 105, '01/MAR/1996', 'UTTARA');

INSERT INTO masud_1277593 VALUES(
2, 'RANA', 106, '02/APR/1997', 'KERANIGONJ');

INSERT INTO masud_1277593 VALUES(
3, 'HASAN', 107, '03/MAY/1998', 'MIRPUR');

INSERT INTO masud_1277593 VALUES(
4, 'JAHIR', 108, '04/JUN/1999', 'GULSHAN');

INSERT INTO masud_1277593 VALUES(
5, 'TAMIM', 108, '05/JUL/2000', 'BANANI');


-- The way add new column
ALTER TABLE masud_1277593
add
(Gender VARCHAR2(10));

-- This is way column rename
ALTER TABLE masud_1277593 RENAME COLUMN salary
TO new_salary;

-- This is way table rename
ALTER TABLE masud_1277593 RENAME to new_masud_1277593;


UPDATE masud_1277593
SET
salary= null,
address= 'DHAKA'
WHERE eid=3;


DELETE FROM masud_1277593
WHERE eid=5;


truncate TABLE masud_1277593;
drop TABLE masud_1277593;
ROLLBACK;


SELECT* 
FROM masud_1277593;

commit;
-- Start workshop 1 and volume 1.
-- From Practice Chapter5 and page5
SELECT last_name, NVL(to_char(commission_pct),'No Commission')
FROM employees;


-- From Practice Chapter5 and page6
SELECT last_name, job_id,
        CASE job_id
        WHEN 'AD_PRES' THEN 'A'
        WHEN 'ST_MAN' THEN 'B'
        WHEN 'IT_PROG' THEN 'C'
        WHEN 'SA_REP' THEN 'D'
        WHEN 'ST_CLERK' THEN 'E'
        ELSE '0'
        END grade
FROM employees;

-- From Practice Chapter5 and page6
SELECT last_name, job_id,
    CASE job_id
    WHEN 'AD_PRES' THEN 'A'
    WHEN 'ST_MAN' THEN 'B'
    WHEN 'IT_PROG' THEN 'C'
    WHEN 'SA_REP' THEN 'D'
    WHEN 'ST_CLERK' THEN 'E'
    ELSE '0'
    END GRADE   
FROM employees;

-- From Practice Chapter5 and page7
SELECT last_name, job_id,
    (CASE
    WHEN job_id='AD_PRES' THEN 'A'
    WHEN job_id='ST_MAN' THEN 'B'
    WHEN job_id='IT_PROG' THEN 'C'
    WHEN job_id='SA_REP' THEN 'D'
    WHEN job_id='ST_CLERK' THEN 'E'
    ELSE '0'
    END) GRADE
    FROM employees;

-- From Practice Chapter5 and page8
SELECT last_name, job_id,
    decode (job_id, 
            'AD_PRES',   'A',
            'ST_MAN',    'B',
            'IT_PROG',   'C',
            'SA_REP',    'D',
            'ST_CLERK',  'E',
            '0')GRADE
    FROM employees;
    
-- From Practice Chapter6 and page3. Q.04
SELECT 
    ROUND (MAX(salary),0) "Maximum",
    ROUND (MIN(salary),0) "Minimum",
    ROUND (SUM(salary),0) "Sum",
    ROUND (AVG(salary),3) "Average"   
FROM employees;


-- From Practice Chapter6 and page3. Q.05
SELECT job_id,
    ROUND (MAX(salary),0) "Maximum",
    ROUND (MIN(salary),0) "Minimum",
    ROUND (SUM(salary),0) "Sum",
    ROUND (AVG(salary),3) "Average"   
FROM employees
GROUP BY job_id;


-- From Practice Chapter6 and page3. Q.05
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;


SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

    


    
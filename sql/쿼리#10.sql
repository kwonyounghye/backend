#먼저 불러오기
use web;
SELECT*FROM emp ORDER BY empno;
SELECT job 
FROM emp;
SELECT*
FROM emp 
order BY empno DESC;
SELECT*
FROM emp
ORDER BY job, sal DESC;
SELECT ename 이름, job 직급, sal 급여
FROM emp
ORDER BY job, sal DESC;
SELECT*
FROM emp
WHERE sal>100 and sal<400
ORDER BY sal DESC;

SELECT ename, sal, deptno 
FROM emp
WHERE deptno IN (10, 20);

SELECT ename, sal, deptno
FROM emp
WHERE deptno!=30;

SELECT*
FROM emp;

SELECT ename, sal
FROM emp
WHERE sal BETWEEN 300 AND 500;

SELECT ename, sal
FROM emp
WHERE sal>= 300 AND sal<=500;

SELECT*
FROM emp
WHERE ename LIKE'박%';

SELECT ename 
FROM emp
WHERE ename LIKE '이%';

SELECT*
FROM emp
WHERE comm IS NULL;
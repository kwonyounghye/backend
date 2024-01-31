SELECT MIN(sal) 
FROM emp;

SELECT*
FROM emp
WHERE sal=300;

#서브쿼리 ()로 묶어야 함
SELECT*
FROM emp
WHERE sal=(SELECT MIN(sal) FROM emp);

SELECT AVG(sal) FROM emp;

SELECT ename, dname, sal
FROM emp e, dept d
WHERE e.deptno=d.deptno
AND sal>494.4286;

SELECT ename, dname, sal
FROM emp e, dept d
WHERE e.deptno=d.deptno
and sal>(SELECT AVG(sal) FROM emp);

SELECT MAX(sal) FROM emp
WHERE deptno=30;

SELECT ename, dname, sal
FROM emp e, dept d
WHERE e.deptno=d.deptno
AND sal>(SELECT MAX(sal) FROM emp
WHERE deptno=30);

#메인 쿼리와 연관된 서브쿼리
SELECT ename, deptno, 
(SELECT dname FROM dept d WHERE d.deptno=e.deptno) dname
FROM emp e;

SELECT *
FROM prof;
SELECT*
FROM major;

SELECT hiredate
FROM prof
WHERE pname='조재철';
SELECT pname, hiredate, mname
FROM prof p, major m
WHERE p.majorno=m.majorno
AND hiredate >(SELECT hiredate
FROM prof
WHERE pname='조재철');

SELECT pname, pay, hiredate
FROM prof
WHERE hiredate>(select hiredate from prof where pname='심상수')
AND pay<(SELECT pay FROM prof WHERE pname='박철호');

SELECT *
FROM titanic;

SELECT*
FROM titanic
WHERE survived=1
AND fare>(SELECT AVG(fare) FROM titanic);

SELECT *
FROM titanic
WHERE pclass=1
AND survived=1
AND age>=50;
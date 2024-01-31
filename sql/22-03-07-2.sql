SELECT deptno, sal 
FROM emp;

#집계함수
SELECT
deptno, COUNT(*), SUM(sal), AVG(sal), MIN(sal), MAX(sal)
FROM emp
GROUP BY deptno#요약 기준 필드
ORDER BY deptno;

SELECT e.deptno, dname, COUNT(*), SUM(sal), MIN(sal), MAX(sal)
FROM emp e, dept d #조인할 테이블들
WHERE e.deptno=d.deptno #조인 조건
GROUP BY deptno
ORDER BY deptno;


SELECT majorno, AVG(pay)
FROM prof
GROUP BY majorno #요약 기준 필드
ORDER BY majorno;

SELECT p.majorno, mname, AVG(pay)
FROM prof p, major m
WHERE p.majorno=m.majorno
GROUP BY majorno
ORDER BY majorno;

SELECT majorno, POSITION, AVG(pay)
FROM prof
GROUP BY majorno, POSITION #학과코드별, 직급별
ORDER BY majorno, POSITION;

SELECT mname, AVG(pay)
FROM prof p, major m #테이블 조인
WHERE p.majorno=m.majorno #조인조건
GROUP BY mname #요약필드
HAVING AVG(pay)>=450; #요약된 결과 중에서 선택

SELECT*
from stud;
SELECT*
FROM major;

SELECT m.majorno, mname, COUNT(*)
FROM stud s, major m
WHERE s.majorno=m.majorno
GROUP BY majorno;

SELECT p.profno, pname, COUNT(*)
FROM stud s, prof p
WHERE p.profno=s.profno
GROUP BY profno;

SELECT majorno, MAX(pay+IFNULL(bonus, 0)), MIN(pay+IFNULL(bonus, 0)), ROUND(AVG(pay+IFNULL(bonus,0)),1)
FROM prof
GROUP BY majorno;

SELECT*
FROM titanic;

SELECT survived, sex, COUNT(*), AVG(age)
FROM titanic
GROUP BY survived, sex
ORDER BY survived, sex;







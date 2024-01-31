#*모든 필드
SELECT COUNT(*) FROM emp;#레코드 개수
SELECT sum(sal) FROM emp;#
SELECT avg(sal) FROM emp;
SELECT min(sal) FROM emp;
SELECT max(sal) FROM emp;

SELECT COUNT(*), SUM(sal), AVG(sal), MIN(sal), MAX(sal)
FROM emp;

SELECT NOW();

SELECT DATE_ADD(NOW(), INTERVAL -1 DAY);
SELECT DATE_ADD(NOW(), INTERVAL -1 week);
SELECT DATE_ADD(NOW(), INTERVAL -1 month);
SELECT DATE_ADD(NOW(), INTERVAL -1 year);

SELECT DATE_ADD(NOW(), INTERVAL 1 DAY);
SELECT DATE_ADD(NOW(), INTERVAL 1 week);
SELECT DATE_ADD(NOW(), INTERVAL 1 month);
SELECT DATE_ADD(NOW(), INTERVAL 1 year);

SELECT hiredate, DATE_ADD(hiredate, INTERVAL 3 MONTH)
FROM emp
WHERE hiredate BETWEEN '2010/01/01' AND '2020/12/31';

SELECT FLOOR(10.9);#소수 이하 버림

SELECT ROUND(10.555555, 2);#소수 둘째 자리에서 반올림

SELECT CEIL(10.1);# 올림

SELECT ename, hiredate,
#timestampdiff(옵션, 날짜1, 날짜2)
	TIMESTAMPDIFF(YEAR, hiredate, NOW()) 근속연수, 
	TIMESTAMPDIFF(DAY, hiredate, NOW())/365 근속연수2, 
	FLOOR(TIMESTAMPDIFF(DAY, hiredate, NOW())/365) 근속연수3
FROM emp;

#null과 연산=>null
SELECT pname, pay, bonus, pay*12+bonus 연봉
FROM prof
WHERE majorno=101;
#ifnull(a,b) a가 null이면 b, null이 아니면 a
SELECT pname, pay, bonus, pay*12+IFNULL(bonus, 0) 연봉
FROM prof
WHERE majorno=101;

SELECT ename, job, sal
FROM emp
WHERE sal>=300;

SELECT ename, 
TIMESTAMPDIFF(MONTH, hiredate, NOW())
FROM emp
TIMESTAMPDIFF(MONTH, hiredate, NOW())>=100
ORDER BY 근무개월수 DESC;

SELECT ename, job, 
TIMESTAMPDIFF(WEEK, hiredate, NOW())
FROM emp
ORDER BY 총근무주수 DESC, ename;
#에러

SELECT TIMESTAMPDIFF(day, '2021/01/05', '2021/05/25');

SELECT*
FROM emp;

SELECT ename,
TIMESTAMPDIFF(YEAR, hiredate, NOW()) 근속연수,
TIMESTAMPDIFF(DAY,hiredate, NOW())/365 근속연수2,
FLOOR(TIMESTAMPDIFF(DAY, hiredate, NOW())/365)근속연수3
FROM emp;

SELECT FLOOR(10.5);
SELECT CEIL(10.1);
SELECT ROUND(10.55555,2);

SELECT*
FROM prof;

SELECT pname, pay, bonus, pay*12+bonus 연봉
FROM prof
WHERE majorno=101;
SELECT*
FROM prof;

SELECT pname, bonus, pay*12+bonus 연봉
FROM prof
WHERE majorno=101;

SELECT pname, pay, IFNULL(bonus,0) bonus, pay*12+IFNULL(bonus, 0) 연봉
FROM prof
WHERE majorno=101; 

SELECT*
FROM emp;

SELECT ename 이름, job 직급, sal 급여
FROM emp
WHERE sal>=300
ORDER BY sal;  

SELECT ename, hiredate, timestampdiff(MONTH, hiredate,NOW()) 근무개월수
FROM emp
WHERE timestampdiff(MONTH, hiredate,NOW())>=100
ORDER BY 근무개월수; 

SELECT ename, job, TIMESTAMPDIFF(WEEK, hiredate, NOW()) 총근무주수
FROM emp
ORDER BY 총근무주수 DESC, ename;

SHOW TABLES;

SELECT*
FROM emp;

SELECT*
FROM dept;

SELECT*
FROM bank;

SELECT empno, ename, dname
FROM emp, dept
WHERE emp.deptno=dept.deptno;

SELECT empno, ename, dname, deptno
FROM emp e, dept d
WHERE e.deptno=d.deptno;

SELECT*
FROM dept;

SELECT*
FROM stud;
SELECT*
FROM major;

SELECT sname, mname, s.majorno
FROM stud s, major m
WHERE s.majorno=m.majorno;

DROP TABLE product;

CREATE TABLE product(
product_code VARCHAR(20) NOT NULL PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
price INT DEFAULT 0,
company VARCHAR(50),
make_date DATETIME DEFAULT NOW()
);

SELECT*
FROM product;

INSERT INTO product(product_code, product_name, company)
VALUES ('A5', '아이폰', '애플');
INSERT INTO product VALUES
('A1', 'IPHONE', 9000000, 'apple', '2017-03-01');

INSERT INTO product VALUES
('A2', 'galaxy', 10000000, 'samsung', '2019-03-01');
INSERT INTO product VALUES
('A3', '갤럭시', '5000000', '삼성', '2021.03.01');
SELECT*
FROM product;

CREATE TABLE product_sales (
product_code VARCHAR(20) NOT NULL,
amount INT DEFAULT 0
);

INSERT INTO product_sales VALUES('A1',100);
INSERT INTO product_sales VALUES('A2',200);
INSERT INTO product_sales VALUES('A3',300);
#테이블 지우기
DROP TABLE
product_sales;

SHOW TABLES;



delete
from product_sales;


SELECT*
from product_sales;
SELECT*
FROM product;
SELECT p.product_code, product_name, price, amount, price*amount money, make_date
FROM product p, product_sales ps
WHERE p.product_code=ps.product_code;

SELECT p.product_code, product_name, price, amount, price*amount money, make_date
FROM product p join product_sales s
on p.product_code=s.product_code;

SELECT ename, dname,e.deptno
FROM emp e join dept d
on e.deptno=d.deptno;

SELECT*
FROM emp;

SELECT ename, dname, sal, e.deptno
FROM emp e, dept d
WHERE e.deptno=d.deptno;

SELECT job, ename,dname, e.deptno
FROM emp e JOIN dept d
WHERE e.deptno=d.deptno
and job ='사원';

SELECT ename, dname
FROM emp e, dept d
WHERE ename LIKE'%손%';
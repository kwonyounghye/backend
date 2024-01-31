#테이블 목록
SHOW TABLES;

SELECT*FROM emp;
SELECT*FROM dept;

SELECT empno, ename, dname
FROM emp, dept
WHERE emp.deptno=dept.deptno;
# 위 아래 같음
SELECT empno, ename, dname
FROM emp e, dept d #조인할 테이블들
WHERE e.deptno=d.deptno; #조인 조건

SELECT*FROM stud;
SELECT*FROM major;

SELECT sname, mname
FROM stud, major 
WHERE stud.majorno=major.majorno;
#s.있어야함
SELECT sname, s.majorno, mname
FROM stud s, major m
WHERE s.majorno=m.majorno;

DROP TABLE product;#테이블 제거
CREATE TABLE product(
product_code VARCHAR(20) NOT NULL PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
price INT DEFAULT 0,
company VARCHAR(50),
make_date DATETIME DEFAULT NOW()
);
#테이블에 자료 넣을 때 insert
INSERT INTO product VALUES ('A1', '아이폰', 900000, '애플', '2017-03-01');
INSERT INTO product VALUES ('A2', '갤럭시노트', 1000000, '삼성', '2017-08-01');
INSERT INTO product VALUES ('A3', '갤럭시탭', 1200000, '삼성', '2017-10-01');

SELECT*FROM product;

CREATE TABLE product_sales (
product_code VARCHAR(20) NOT NULL,
amount INT DEFAULT 0
);
INSERT INTO product_sales VALUES ('A1', 100);
INSERT INTO product_sales values ('A2', 200);
INSERT INTO product_sales VALUES ('A3', 300);

SELECT*FROM product_sales;
SELECT
product.product_code, product_name, company, price, amount, price*amount money, make_date
FROM product, product_sales
WHERE product.product_code=product_sales.product_code;

SELECT
p.product_code, product_name, price, company, amount
FROM product p, product_sales s
WHERE p.product_code = s.product_code;

SELECT
p.product_code, product_name,price, company, amount
FROM product p join product_sales s
on p.product_code = s.product_code;

SELECT 
p.product_code, product_name, price, company, amount
FROM product p INNER JOIN product_sales s
ON p.product_code=s.product_code;

SELECT eNAME, dname, sal
FROM emp e JOIN dept d
WHERE e.deptno=d.deptno;

SELECT ename, dname
FROM emp e JOIN dept d
WHERE e.deptno=d.deptno
and job='사원';

SELECT ename, dname
FROM emp e, dept d
where e.deptno=d.deptno 
and ename='손기철';

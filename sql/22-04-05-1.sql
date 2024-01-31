USE web;

CREATE TABLE emp2 AS SELECT * FROM emp WHERE 1 =0;
SELECT * FROM emp2;

delimiter $$
DROP PROCEDURE if exists loop_test $$
CREATE PROCEDURE loop_test(IN MAX INT)
BEGIN
	DECLARE cnt INT DEFAULT 0;
while (cnt<MAX) DO
set cnt = cnt + 1;
INSERT INTO emp2 (empno, ename) VALUES (cnt, CONCAT('name', cnt));
END while;
SELECT '완료되었습니다.';
end $$
delimiter $$

delete from emp2;
Call loop_test(991); 

--limit 시작인덱스,개수
--시작인덱스는 0부터 시작
1페이지(1번부터 10개)
select * from emp2 limit 0,10;
--2페이지(11번부터 10개)
select * from emp2 limit 10,10;
--3페이지(21번부터 10개)
select * from emp2 limit 20,10;

DROP TABLE books;

CREATE TABLE books (
idx INT PRIMARY KEY,
title VARCHAR(50),
author VARCHAR(50),
price INT DEFAULT 0,
amount INT DEFAULT 0
);
INSERT INTO books VALUES (1, '자바','한빛', 30000, 50);
INSERT INTO books VALUES (2, 'jsp', '삼성', 35000, 40);
INSERT INTO books VALUES (3, 'python', '에이콘', 40000, 30);

SELECT * FROM books;
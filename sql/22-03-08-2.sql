SELECT empno, ename
FROM emp 
WHERE empno=7900;
SELECT empno, ename
FROM emp
WHERE ename='박민철';

#인덱스 추가
CREATE INDEX emp_ename_idx
ON emp(ename);
#인덱스 제거
ALTER TABLE emp 
DROP INDEX emp_ename_idx;

CREATE TABLE emp3 (
NO INT,
NAME VARCHAR(10),
sal INT
);

delimiter $$
DROP PROCEDURE if exists data_insert$$
create procedure data_insert()
BEGIN
	DECLARE i INT DEFAULT 1;
	DECLARE NAME VARCHAR(50) DEFAULT '';
	DECLARE sal INT DEFAULT 0;
	while i<=100000 DO
		SET NAME='kim';
		SET sal=500;
		if i MOD 2 = 0 then
			SET NAME = CONCAT('kim', i);
			SET sal = 300;
		ELSEIF i MOD 3=0 then
			SET NAME=CONCAT('park',i);
			SET sal = 400;
		ELSEIF i MOD 5=0 then
			SET NAME=CONCAT('hong',i);
			SET sal = 500;
		ELSE
			SET NAME=CONCAT('shin',i);
			sET sal = 250;
		END if; 
		INSERT INTO emp3 VALUES(i, NAME, sal);
		SET i=i+1;
	END while;
END$$
delimiter $$

#call 프로시저()
CALL data_insert();

SELECT*
FROM emp3;

USE web;

#explain select 명령어: 실행계획 보기
explain
select * from emp3 where name='shin691' and sal > 200;

#인덱스 추가
CREATE INDEX emp_name_idx ON emp3(NAME, sal);
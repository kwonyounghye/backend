CREATE TABLE t_emp (
id INT NOT NULL,
NAME VARCHAR(25),
salary FLOAT,
phone VARCHAR(15),
dept_name VARCHAR(25)
);

SELECT *
FROM t_emp;
#rename table 변경전 to 변경후
RENAME TABLE t_emp TO s_emp;

SELECT*
FROM s_emp;

INSERT INTO s_emp VALUES(100, '이정민', 3000, '010-3333-4444', '개발팀');
INSERT INTO s_emp VALUES(101, '민순철', 3600, '010-7777-4444', '연구팀');
INSERT INTO s_emp VALUES(102, '장혜숙', 4500, '010-7777-7777', '총무팀');

ALTER TABLE s_emp ADD hire_date DATETIME;

ALTER TABLE s_emp MODIFY phone VARCHAR(50);

ALTER TABLE s_emp CHANGE id t_id INT;

ALTER TABLE s_emp DROP COLUMN  dept_name;
#update 테이블 set 필드=값 where 조건
UPDATE s_emp SET hire_date=NOW() WHERE t_id=100;
UPDATE s_emp SET hire_date=NOW() WHERE t_id=101;
UPDATE s_emp SET hire_date=NOW() WHERE t_id=102;
#insert into 테이블(필드) values (값)
INSERT INTO s_emp (t_id, hire_date) VALUES (40, NOW());
#delete from 테이블 where 조건
DELETE FROM s_emp WHERE t_id=100;

ALTER TABLE s_EMP ADD mailid VARCHAR(20);

ALTER TABLE s_emp MODIFY  mailid VARCHAR(30);

ALTER TABLE s_emp change mailid e_mail VARCHAR(30);
DROP TABLE c_emp;
CREATE TABLE c_emp (
id INT,
NAME VARCHAR(25),
salary FLOAT,
phone VARCHAR(15),
dept_id int
);

INSERT INTO c_emp (Id, NAME) VALUES (1, '김철수');
INSERT INTO c_emp (id, NAME) VALUES (1, '김기철');

SELECT*FROM c_emp;

DROP TABLE c_emp;
CREATE TABLE c_emp (
id INT,
NAME VARCHAR(25),
salary FLOAT,
phone VARCHAR(15),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(deptno)
);

INSERT INTO c_emp (id, NAME, dept_id) VALUES (1, 'kim', 10);
INSERT INTO c_emp (id, NAME, dept_id) VALUES (2, 'park', 20);
INSERT INTO c_emp (id, NAME, dept_id) VALUES (3, 'song', 50);
 
 SELECT*
 FROM c_emp;
 
 DROP TABLE c_emp;
CREATE TABLE c_emp (
id INT,
NAME VARCHAR(25),
salary FLOAT,
phone VARCHAR(15),
dept_id INT
CONSTRAINT c_emp_name_un UNIQUE(NAME)
);

INSERT INTO c_emp (id, NAME) VALUES (1, 'kim');
INSERT INTO c_emp (id, NAME) VALUES (2, 'kim');

SELECT*FROM c_emp;
#null허용
insert INTO c_emp (id) VALUES (10);
INSERT INTO c_emp (id) VALUES (30);

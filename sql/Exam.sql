USE web;

SHOW TABLES;

SELECT*FROM member;

select*from member where userid='kim' and pwd=1234;

CREATE TABLE mydb (
id VARCHAR(20),
NAME VARCHAR(15),
address VARCHAR(30),
mobile VARCHAR(30),
email VARCHAR(30)
);
alter table mydb rename address;

SELECT * FROM address;

INSERT INTO address VALUES ('kim', '김철수', '서울', '010-1293-3283', 'kim@naver.com');
INSERT INTO address VALUES ('choi', '최철수', '경기', '010-9432-2732', 'choi@naver.com');
INSERT INTO address VALUES ('park', '박철수', '부산', '010-9321-4287', 'park@naver.com');

SHOW DATABASES;
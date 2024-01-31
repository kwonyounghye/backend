USE web;

SHOW TABLES;
#테이블 제거
DROP TABLE member;

CREATE TABLE member (
userid VARCHAR(50) NOT NULL PRIMARY KEY,
pwd VARCHAR(50) NOT NULL,
NAME VARCHAR(50) NOT NULL
);

INSERT INTO member VALUES ('kim', '1234', '김철수');
SELECT*FROM member;
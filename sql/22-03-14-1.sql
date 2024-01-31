USE web;

SELECT*FROM emp;

SELECT * FROM scores;

DROP TABLE scores;

CREATE TABLE scores (
student_no VARCHAR(50) PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
kor INT DEFAULT 0,
eng INT DEFAULT 0,
mat INT DEFAULT 0,
tot INT DEFAULT 0,
AVG DOUBLE DEFAULT 0
);

INSERT INTO scores VALUES ('1', '김철수', 90, 80,70,240, 80);
INSERT INTO scores VALUES ('2', '김철진', 90, 80,70,240, 80);
INSERT INTO scores VALUES ('3', '이철수', 90, 80,70,240, 80);
INSERT INTO scores VALUES ('4', '박철진', 90, 80,70,240, 80);
INSERT INTO scores VALUES ('5', '송철수', 90, 80,70,240, 80);
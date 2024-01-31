USE web;

DROP TABLE member;
CREATE TABLE member (
userid VARCHAR(50) NOT NULL PRIMARY KEY,
passwd VARCHAR(50) NOT NULL,
name VARCHAR(50) NOT NULL,
email VARCHAR(50),
join_date DATETIME default NOW()
);

INSERT INTO member (userid, passwd, NAME, email)
VALUES ('kim', '1234', '김철수', 'kim@gmail.com');

SELECT * FROM member;

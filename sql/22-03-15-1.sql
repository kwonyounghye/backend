USE web;
SELECT*FROM scores
WHERE NAME = '김철수';

CREATE TABLE ram (
DATE DOUBLE,
price DOUBLE
);

SELECT*FROM ram;

delete
FROM ram
WHERE DATE=0;

select COUNT(*)
FROM ram;
#평균금액
SELECT AVG(price)
FROM ram;
USE web;


create table names (
id int,
name varchar(100),
year INT,
gender char(1),
count int
);

SHOW DATABASES;

SHOW TABLES;

SELECT*FROM names;

select COUNT(*) FROM names;

SELECT * FROM names LIMIT 10;

DELETE FROM names WHERE id=0;

SELECT sum(COUNT)
FROM names
GROUP BY NAME
ORDER BY SUM(COUNT) DESC;
#서브쿼리에 alias가 필요한 경우
SELECT gender, NAME, SUM(COUNT)
FROM (SELECT * from names LIMIT 500000) a
GROUP BY gender, NAME
ORDER BY SUM(COUNT) DESC
LIMIT 5;#전체 자료의 top5

SELECT SUM(COUNT), NAME
FROM (SELECT * FROM names WHERE gender = 'M' LIMIT 500000) a
GROUP BY NAME
ORDER BY SUM(COUNT) DESC
LIMIT 5;
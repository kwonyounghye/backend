SELECT *
FROM product;

DESC product;

SELECT*
FROM stud;
SELECT *
FROM major;

SELECT studno, sname, grade, mname 
FROM stud s, major m
WHERE s.majorno=m.majorno;

INSERT INTO stud (studno, sname, grade, majorno) VALUES (202201, '김철수', 1, 101);
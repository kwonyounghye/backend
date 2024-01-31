USE web

CREATE TABLE insurance (
age INT, 
sex VARCHAR(20),
bmi DOUBLE,
children INT,
smoker VARCHAR(10),
region VARCHAR(20),
charges DOUBLE
);

SELECT*FROM insurance WHERE age=0;
DELETE FROM insurance WHERE age=0;
SELECT COUNT(*) FROM insurance;

SELECT *FROM insurance;

SELECT sex, AVG(age) age, AVG(bmi) bmi, AVG(charges) charges
FROM insurance
GROUP BY sex;

SELECT smoker, COUNT(smoker), AVG(charges)
FROM insurance
GROUP BY smoker;#요약

SELECT region, COUNT(*), AVG(charges)
FROM insurance
GROUP BY region;
USE web;
CREATE TABLE titanic (
PassengerId INT PRIMARY KEY,
survived INT,
pclass INT,
NAME VARCHAR(100),
sex VARCHAR(10),
age DOUBLE,
sibsp INT,
parch INT,
ticket VARCHAR(50),
fare DOUBLE,
cabin VARCHAR(50),
embarked VARCHAR(10)
);

SELECT*
FROM titanic;

DELETE
FROM titanic;

DELETE
FROM titanic
WHERE passengerid=0;

SELECT COUNT(*)
FROM titanic;
SELECT COUNT(*)
FROM titanic
WHERE survived=1;
SELECT COUNT(*)
FROM titanic
WHERE survived=0;
SELECT (SELECT COUNT(*) 
FROM titanic
WHERE survived=1)*100/(SELECT COUNT(*) 
FROM titanic);

SELECT AVG(age)
FROM titanic;
SELECT AVG(fare) 
FROM titanic;
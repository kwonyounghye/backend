CREATE TABLE cafe (
daycode INT, 
juices INT, 
coffees INT 
);

SELECT*FROM cafe;
#첫번째 행 삭제
DELETE FROM cafe WHERE daycode=0;

SELECT sum(Juices), AVG(Juices), MAX(JUices), MIN(JUICEs)
FROM cafe;

SELECT sum(coffees), AVG(coffees), MAX(coffees), MIN(coffees)
FROM cafe;

SELECT daycode, sum(coffees), AVG(coffees), MAX(coffees), MIN(coffees)
FROM cafe
GROUP BY daycode
ORDER BY daycode;

ALTER table cafe ADD juice_price INT;
ALTER TABLE cafe ADD coffee_price INT;
update cafe set juice_price=3000, coffee_price=2000 WHERE daycode<=4;
update cafe set juice_price=4000, coffee_price=3000 WHERE daycode=5;
SELECT*
FROM cafe;

ALTER TABLE cafe ADD juice_money INT;
ALTER TABLE cafe ADD coffee_money INT;

UPDATE cafe 
SET juice_money=juice_price*juices, 
coffee_money=coffee_price*coffees;
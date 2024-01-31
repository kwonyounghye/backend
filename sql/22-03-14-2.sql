CREATE TABLE rides (
weekend	VARCHAR(5),
`num.child` INT,	#역따옴표
distance	DOUBLE,
rides	INT, 
games	INT,
wait	INT,
clean	INT,
overall int
);

SELECT * FROM rides;
DESC rides;
DELETE FROM rides WHERE distance=0;

SELECT weekend, AVG(overall)
FROM rides
GROUP BY weekend;

SELECT `num.child`, AVG(overall) avg_overall
FROM rides
GROUP BY `num.child`
ORDER BY `num.child`;
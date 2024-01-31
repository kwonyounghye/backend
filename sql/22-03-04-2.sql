USE web;
#`역따옴표
create TABLE ozone (
Ozone INT,
`Solar.R` INT,
Wind DOUBLE,
Temp INT,
MONTH INT,
DAY INT
);

SELECT*
FROM Ozone;

delete
FROM ozone
WHERE ozone=0;

SELECT
COUNT(*)
FROM ozone;

DELETE
FROM ozone;

SELECT AVG(ozone), AVG(`solar.r`), AVG(wind), AVG(temp)
FROM ozone;
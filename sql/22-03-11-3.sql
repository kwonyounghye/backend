CREATE TABLE airports (
iata VARCHAR(50),
airport VARCHAR(500)
);

SELECT * FROM airports;

SELECT*FROM ontime LIMIT 10;

SELECT YEAR, origin, dest, COUNT(*)
FROM ontime
WHERE arrdelay>0
GROUP BY YEAR, origin, dest
ORDER BY COUNT(*) DESC;

SELECT a.year, a.origin, b.airport, a.dest, c.airport, COUNT(*)
FROM ontime a JOIN airports b
ON a.Origin=b.iata
JOIN airports c
ON a.Dest=c.iata
WHERE a.arrdelay>0
GROUP BY a.Year, a.Origin, b.airport, a.Dest, c.airport
ORDER BY COUNT(*) DESC;
create table ontime (
Year int,
Month int,
DayofMonth int,
DayOfWeek int,
DepTime int,
CRSDepTime int,
ArrTime int,
CRSArrTime int,
UniqueCarrier varchar(5),
FlightNum int,
TailNum varchar(8),
ActualElapsedTime int,
CRSElapsedTime int,
AirTime int,
ArrDelay int,
DepDelay int,
Origin varchar(3),
Dest varchar(3),
Distance int,
TaxiIn int,
TaxiOut int,
Cancelled int,
CancellationCode varchar(1),
Diverted varchar(1),
CarrierDelay int,
WeatherDelay int,
NASDelay int,
SecurityDelay int,
LateAircraftDelay int
);

SELECT*FROM ontime;

 USE web;

 SELECT COUNT(*) FROM ontime;

 SELECT*FROM ontime LIMIT 100;
 
 SELECT YEAR, MONTH, AVG(depdelay), AVG(arrdelay)
 FROM ontime
 GROUP BY YEAR, MONTH;
 
 CREATE TABLE carriers (
 CODE VARCHAR(50),
 description VARCHAR(500)
 );
 
 SELECT * FROM carriers;
 
 SELECT uniquecarrier, AVG(depdelay), AVG(arrdelay)
 FROM ontime
 GROUP BY uniquecarrier
 ORDER BY AVG(arrdelay) DESC;
 			#필드명								#식
 SELECT uniquecarrier, description, AVG(depdelay) depdelay, AVG(arrdelay) arrdelay
 FROM ontime a, carriers b
 WHERE a.UniqueCarrier=b.code
 GROUP BY uniquecarrier
 ORDER BY AVG(arrdelay) desc;

CREATE OR REPLACE VIEW ontime_v
AS
 SELECT uniquecarrier, description, AVG(depdelay) depdelay, AVG(arrdelay) arrdelay
 FROM ontime a, carriers b
 WHERE a.UniqueCarrier=b.code
 GROUP BY uniquecarrier
 ORDER BY AVG(arrdelay) desc;
 
 SELECT * FROM ontime_v;
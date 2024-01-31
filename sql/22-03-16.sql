USE web;

SELECT ozone, `solar.r`, wind, temp
FROM ozone
WHERE MONTH=5 AND DAY=1;
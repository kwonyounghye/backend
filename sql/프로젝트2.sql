SELECT * FROM trip_list;

ALTER TABLE trip_list ADD AREA VARCHAR(10);
SHOW tables;
INSERT INTO trip_list (CODE, title, price, AREA) VALUES (0238, '동해 바다 따라 쉬고 또 쉬기', 30000, '강원');

(SELECT CODE
FROM trip_list
WHERE AREA= '강원';)

DELETE from trip_list;
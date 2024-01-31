CREATE TABLE car(
car_no VARCHAR(50) NOT NULL PRIMARY KEY,
company VARCHAR(50),
TYPE VARCHAR(50),
YEAR INT,
efficiency INT
);

insert INTO car VALUES ('99가1234', '현대', '오토', 2017, 20);
insert INTO car VALUES ('88가1234', '기아', '수동', 2019, 25);
insert INTO car VALUES ('77가1234', '쌍용', '오토', 2022, 18);
insert INTO car VALUES ('66가1234', '삼성', '오토', 2020, 22);
insert INTO car VALUES ('55가1234', '현대', '오토', 2021, 17);

SELECT *
FROM car;
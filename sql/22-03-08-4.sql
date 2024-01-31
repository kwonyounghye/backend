USE web;

CREATE TABLE books (
book_code INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(50), 
author VARCHAR(30),
year VARCHAR(10),
price INT
);

INSERT INTO books(title, author, year, price)
VALUES('운영체제', 'kim', '2018', 35000);
INSERT INTO books(title, author, year, price)
VALUES('C언어', 'park', '2020', 30000);
INSERT INTO books(title, author, year, price)
VALUES('자바', 'hong', '2019', 45000);
USE web;
select*
from books;

delete from books where book_code=2;
update books set price=40000 where book_code=1;
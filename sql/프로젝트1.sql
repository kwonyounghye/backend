USE trip_web;

CREATE table trip_list (
#상품코드
code int not null primary KEY, 
#상품명
title VARCHAR(500) not NULL,
#가격
price INT DEFAULT 0,
#여행일정
time DATETIME
);
drop table trip;

select * from trip_list;

SELECT * FROM trip_list;
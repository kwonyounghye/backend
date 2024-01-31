#F9 실행
#Ctrl F9 선택 실행
create user 'user'@'%' identified by '1234';
create user 'user'@'localhost' identified by '1234';
flush privileges;
grant all privileges on web.* to 'user'@'%';
grant all privileges on web.* to 'user'@'localhost';
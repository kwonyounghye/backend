#drop database mydb;
create database mydb;
use mydb;

#drop table emp;
CREATE TABLE emp ( 
  empno     int primary key, 
  ename     varchar(50), 
  job       varchar(50), 
  mgr       int, 
  hiredate  datetime default now(), 
  sal       int,
  comm      int, 
  deptno    int);

insert into emp values (7369,'김철수','사원',7902,'2000-12-17',200,null,20);
insert into emp values (7499,'이찬수','주임',7698,'2001-02-20',260,300,30);
insert into emp values (7521,'박종수','주임',7698,'2002-02-22',325,500,30);
insert into emp values (7566,'임채호','과장',7839,'2001-04-02',497,null,20);
insert into emp values (7654,'나대호','주임',7698,'2001-09-28',325,1400,30);
insert into emp values (7698,'박지성','과장',7839,'2001-05-01',485,null,30);
insert into emp values (7782,'구자철','과장',7839,'2001-06-09',445,null,10);
insert into emp values (7788,'송기성','부장',7566,'1997-04-17',500,null,20);
insert into emp values (7839,'김철호','대표',null,'2001-11-17',800,null,10);
insert into emp values (7844,'성명준','주임',7698,'2001-09-08',350,0,30);
insert into emp values (7876,'황인태','사원',7788,'2007-05-23',210,null,20);
insert into emp values (7900,'박민성','사원',7698,'2001-12-03',295,null,30);
insert into emp values (7902,'박진성','부장',7566,'2001-12-03',600,null,20);
insert into emp values (7934,'최철호','사원',7782,'2012-01-23',230,null,10);


#drop table dept;
CREATE TABLE dept (
  deptno   int primary key, 
  dname    varchar(50), 
  loc      varchar(50));

insert into dept values (10,'경리팀','부산');
insert into dept values (20,'연구팀','대전');
insert into dept values (30,'총무팀','대구');
insert into dept values (40,'전산팀','인천');




#drop table professor ;

create table professor(
 profno int primary key,
 name  varchar(10) not null, 
 id  varchar(15) not null,
 position varchar (20) not null,
 pay int (3) not null,
 hiredate  date not null,
 bonus int(4) ,
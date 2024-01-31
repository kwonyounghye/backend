--현재 쿼리 실행 : Ctrl + Enter
select * from tab;

select * from emp;
--테이블 필드 목록
desc emp;

select * from emp
order by empno;

select job from emp;--중복 값이 출력됨

select distinct job from emp;--distinct 중복값 제외, 한개씩만 뽑아서 표시

select * from emp order by sal desc;--desc 내림차순

select * from emp order by sal asc;--오름차순(생략 가능)

select*from emp order by job, sal desc;--2단계 정렬

--alias 알리아스 별칭
select ename 이름, job 직급, sal 급여 
from emp 
order by job, sal desc;

select * from emp 
where sal > 100 and sal < 400
order by sal desc;
--필드 in(집합) 집합에 포함되는지 검사
select ename, sal, deptno from emp
where deptno in (10, 20, 40);

select ename, sal, deptno from emp
where deptno = 10 or deptno =20 or deptno = 40;

select ename, sal, deptno from emp
where deptno !=30;--not equal

--필드 between A and B : A~B
select ename, sal from emp
where sal between 300 and 500;

select ename, sal from emp
where sal>=300 and sal<=500;

select ename from emp where ename = '박%';--완전 일치(박%)
select ename from emp where ename like '박%';--유사어 검색

select ename from emp where ename like '%성%';--%키워드% 위치에 관계없이

select ename from emp where comm = null;--null과 연산하면 결과는 null

select ename from emp where comm is null;

select ename, comm from emp where comm!=null;

select ename, comm from emp where comm is not null;

--A||B : A와 B 연결
select ename || '의 급여는 ' || sal || '입니다' from emp;
--select ename + '의 급여는 ' + sal + '입니다' from emp;-- + 더하기만

select empno, sal from emp
where not(sal > 200 and sal < 300)--not 논리부정, () 부분이 먼저 계산됨
order by sal;

select empno, sal from emp
where sal<=200 or sal >=300
order by sal;

select emp, sal from emp
where not sal > 200 and sal <300
order by sal;

select ename, hiredate, deptno
from emp
where hiredate<'2015.01.01';

select ename, job, deptno
from emp 
where deptno in (20, 30);
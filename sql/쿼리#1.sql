#Ctrl F9 선택 실행
SELECT*FROM emp ORDER BY empno;
#선택*모든 필드 from 테이블
#행(레코드): 자료 1건, 열(필드):, 테이블: 열과 행 전체, 기본키Primary key: 중복되지 않는 키 
SELECT job FROM emp;
SELECT ALL job FROM emp;
#distinct 중복값 제거, all 중복값 포함
SELECT DISTINCT job FROM emp;
#desc 내림차순
SELECT*FROM emp ORDER BY sal DESC;
#job 오름차순, sal 내림차순
SELECT*FROM emp ORDER BY job, sal DESC;

#SELECT 필드 선택
#from 테이블
#order by 정렬
#alias 별칭
SELECT ename 이름, job 직급, sal 급여
FROM emp
ORDER BY job, sal DESC;
SELECT*FROM emp
#where 조건(조건에 맞는 행 선택)
WHERE sal>100 AND sal<400
ORDER BY sal DESC;


SELECT ename, sal, deptno FROM emp
#(부서번호)
WHERE deptno IN(10, 20, 40);

SELECT ename, sal, deptno FROM emp
#위의 where과 같은 결과
WHERE deptno = 10 OR deptno = 20 OR deptno = 40;

SELECT ename, sal, deptno FROM emp
WHERE deptno!=30;#not equal

SELECT ename, sal FROM emp
WHERE sal BETWEEN 300 AND 500;

SELECT ename, sal FROM emp
#위의 where과 같은 결과
WHERE sal>=300 AND sal <=500;
#like 키워드를 찾을 때 사용,  이름이 박..인 사원들
SELECT ename FROM emp WHERE ename LIKE '박%';
#위치에 관계 없이 검색
SELECT ename FROM emp WHERE ename LIKE '%성%';
#null과의 연산은 null
SELECT ename FROM emp WHERE comm=NULL;#(x)
SELECT ename FROM emp WHERE comm IS NULL;#(o)

SELECT ename FROM emp WHERE comm !=NULL;#(x)
SELECT ename FROM emp WHERE comm IS NOT NULL;#(o)


SELECT empno, sal FROM emp
WHERE NOT(sal>200 AND sal < 300)
ORDER BY sal;

SELECT empno, sal FROM emp
WHERE sal <=200 OR sal >= 300
order BY sal;

SELECT empno, sal FROM emp
WHERE NOT sal > 200 AND sal < 300
ORDER BY sal;

CREATE TABLE members (
userid VARCHAR(50) NOT NULL PRIMARY KEY,
passwd VARCHAR(50) NOT NULL,
NAME VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL
);

INSERT INTO members (userid, passwd, NAME, email) values
('kim', '1234', '김철수', 'kim@naver.com');

INSERT INTO members (userid, passwd, NAME, email) VALUES
('park', '1234', '박철수', 'park@nate.com');

SELECT*FROM members;

SELECT eNAME, hiredate, deptno FROM emp WHERE hiredate<'2015-01-01' ORDER BY hiredate;

SELECT  ename, job, deptno FROM emp
WHERE deptno IN (20, 30)
ORDER BY ename;
SELECT ename, job, deptno FROM emp
WHERE deptno = 20 OR deptno = 30
ORDER BY ename;


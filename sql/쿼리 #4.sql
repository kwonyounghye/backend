#사용할 데이터베이스 선택
USE mydb;
#emp 테이블의 모든 레코드와 모든 필드 출력
SELECT*FROM emp;
#order by 정렬기준필드
SELECT*FROM emp ORDER BY empno;
#이름 순
SELECT*FROM emp ORDER BY ename;
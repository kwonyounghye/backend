USE web;
#create or replace: 생성 또는 변경
CREATE OR REPLACE VIEW emp_v
AS
SELECT empno, ename, job, sal, deptno
FROM emp;
#view를 테이블처럼 사용 가능
SELECT*
FROM emp_v;

CREATE OR REPLACE VIEW test_v
AS
SELECT empno, ename, e.deptno, dname
FROM emp e, dept d
WHERE e.deptno=d.deptno;

SELECT * FROM test_v;
#테이블과 뷰의 목록
#view: 논리적인 테이블
SHOW TABLEs;
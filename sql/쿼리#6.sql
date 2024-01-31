#ANSI 조인
#inner join: 양쪽 테이블에 자료가 있는 경우
SELECT studno, sname, grade
FROM stud a join prof b #컴머를 join으로
on a.profno=b.profno;#where을 on으로
#left outer join: 왼쪽 테이블은 모두 출력
SELECT sname, grade, pname
FROM stud a left OUTER JOIN prof b
ON a.profno=b.profno;
#right outer join: 오른쪽 테이블은 모두 출력
SELECT sname, grade, pname
FROM stud a RIGHT OUTER JOIN prof b
ON a.profno=b.profno;

#concat(A, B)A와B를 연결
#self join 같은 테이블끼리 join
SELECT CONCAT(a.ename, '의 매니저는 ', b.ename, '이다.')
FROM emp a, emp b
WHERE a.mgr=b.empno;

CREATE TABLE score(
studno VARCHAR2(20) PRIMARY KEY,
kor NUMBER NOT NULL, 
eng NUMBER NOT NULL,
mat NUMBER NOT NULL
);

SELECT*FROM stud;
#자료를 입력
DESC stud; #describe 테이블의 필드 목록
INSERT INTO score VALUES (201811, 88,99,100);
INSERT INTO score VALUES (201812, 89,77,99);
INSERT INTO score VALUES (201813, 85,93,79);
SELECT*FROM score;
#학번, 이름, 국어, 영어, 수학
SELECT a.studno, sname, kor, eng, mat, kor+ENG+MAT 총점,
ROUND((KOR+ENG+MAT)/3,1) 평균
FROM stud A, SCORE B
WHERE A.studno=B.STUDNO;
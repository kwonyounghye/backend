#if (조건, true, false)
SELECT ename, deptno, comm, sal*if(comm IS NULL, 0.03, 0.05)
FROM emp;
#if(조건, true, if(조건, true, if(조건, true, false))))
SELECT ename, sal,
if(FLOOR(sal/100)=0, 'E',
if(FLOOR(sal/100)=1, 'D',
if(FLOOR(sal/100)=2, 'C',
if(FLOOR(sal/100)=3, 'B', 'A')))) 등급
FROM emp;

DROP table score; 

CREATE TABLE score (
student_no VARCHAR(20) PRIMARY KEY,
NAME VARCHAR(30) NOT NULL,
kor INT DEFAULT 0,
eng INT DEFAULT 0,
mat INT DEFAULT 0
);

INSERT INTO score VALUES ('1', 'kim', 90, 80, 70);
INSERT INTO score VALUES ('2', 'park', 98, 88, 77);
INSERT INTO score VALUES ('3', 'song', 88, 64, 66);
INSERT INTO score VALUES ('4', 'lee', 89, 100, 100);
INSERT INTO score VALUES ('5', 'choi', 100, 100, 99);

SELECT NAME, kor, eng, mat, kor+eng+mat 총점, 
ROUND((kor+eng+mat)/3, 2) 평균, 
	if(FLOOR(((kor+eng+mat)/3)/10)=10, 'A',
	if(FLOOR(((kor+eng+mat)/3)/10)=9, 'A',
	if(FLOOR(((kor+eng+mat)/3)/10)=8, 'B',
	if(FLOOR(((kor+eng+mat)/3)/10)=7, 'C',
	if(FLOOR(((kor+eng+mat)/3)/10)=6, 'D', 'F'))))) 등급
FROM score;

SELECT NAME, kor, eng, mat, kor+eng+mat 총점, ROUND((kor+eng+mat)/3, 2) 평균, 
	case 
		when(kor+eng+mat)/3>=90 then 'A'
		when(kor+eng+mat)/3>=80 then 'B'
		when(kor+eng+mat)/3>=70 then 'C'
		when(kor+eng+mat)/3>=60 then 'D'
		ELSE 'F'
	END 등급
FROM score;

SELECT*
FROM score;
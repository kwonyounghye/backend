CREATE OR REPLACE VIEW score_v
AS 
SELECT
NAME, kor, eng, mat, kor+eng+mat 총점, ROUND((kor+eng+mat)/3,2) 평균, 
case 
when (kor+eng+mat)/3>=90 then 'A'
when (kor+eng+mat)/3>=80 then 'B'
when (kor+eng+mat)/3>=70 then 'C'
when (kor+eng+mat)/3>=60 then 'D'
ELSE 'F'
END 등급
FROM score;

SELECT*
FROM score_v;
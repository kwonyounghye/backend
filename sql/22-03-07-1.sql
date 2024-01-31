SHOW DATABASES;
#사용할 데이터베이스 선택
use web;
테이블 만들기
DROP TABLE;#테이블 제거
CREATE TABLE dep(
id VARCHAR(10) PRIMARY KEY,
name VARCHAR(15) NOT NULL,#필수입력
loc VARCHAR(50)
);

#commit- 변경사항을 확정하는 것, 레코드 추가, 수정, 삭제
#오토커밋 여부 확인, 1 auto, 0 수동
SELECT @@autocommit;
#수동커밋으로 변경
SET autocommit=1;
SELECT @@autocommit; #@@없으면 필드명으로 인식, mysql 상태 변수 조회

INSERT INTO dep values('10', '영업팀', '서울');
SAVEPOINT a;
INSERT INTO dep VALUES('20', '홍보팀', '부산');
SAVEPOINT b;
INSERT INTO dep VALUES('30', '연구팀', '인천');

select*from dep;

rollback to a;
select*from dep;
commit;
select*from dep;
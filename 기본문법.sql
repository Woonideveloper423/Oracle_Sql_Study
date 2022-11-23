--DESC->특정 테이블에 어떤 컬럼(구조)이 있는 조회하는 명령어
DESC dept;

--테이블에 모든 컬럼의 row 조회
SELECT * FROM dept;

-- dept 컬럼의 deptno,loc만 조회
SELECT deptno,loc
from dept;

--DEPARTMENT TBL depno,dname만 조회
SELECT deptno,dname
FROM department;

--필드명에 별칭을 주어서 출력(As 또는 ""사용)
select deptno as dno,dname "부서번호"
from department;

--합성 연산자(||)
-- 1.학생 테이블에서 학번과 이름 컬럼을 연결해서
-- "studentContent라는 별명으로 하나의 컬럼처럼 연결해서 출력"
select studno || name as "studentContent"
from student;

-- 학생의 몸무게를 pound로 환산하고 칼럼 이름을 ‘weight_pound’ 라는 별명으로 출력. 
-- 1kg은 2.2pound
select studno,
       weight*2.2 as "weight_pound"
from student;

--길이가 동일하고 타입이 다른 칼럼을 가진 테이블 생성
CREATE TABLE ex_type(
    c char(10),
    v varchar2(10)
)
INSERT INTO ex_type
Values ('sql','sql');       
INSERT INTO ex_type
Values ('sql2','sql2');

commit;

--조건문 처리 시 WHERE
SELECT * FROM ex_type --모든 걸 보여준다
WHERE c = 'sql';      -- 요 조건 [ c = 'sql' ]에 해당Row만 보여준다

SELECT * FROM ex_type -- 모든 걸 보여준다
WHERE v = 'sql';      -- 요 조건 [ v = 'sql' ]에 해당Row만 보여준다

SELECT * FROM ex_type  
WHERE c = v;          -- 요 조건 [ c = v ]에 해당Row만 보여준다. 




--DESC->Ư�� ���̺� � �÷�(����)�� �ִ� ��ȸ�ϴ� ��ɾ�
DESC dept;

--���̺� ��� �÷��� row ��ȸ
SELECT * FROM dept;

-- dept �÷��� deptno,loc�� ��ȸ
SELECT deptno,loc
from dept;

--DEPARTMENT TBL depno,dname�� ��ȸ
SELECT deptno,dname
FROM department;

--�ʵ�� ��Ī�� �־ ���(As �Ǵ� ""���)
select deptno as dno,dname "�μ���ȣ"
from department;

--�ռ� ������(||)
-- 1.�л� ���̺��� �й��� �̸� �÷��� �����ؼ�
-- "studentContent��� �������� �ϳ��� �÷�ó�� �����ؼ� ���"
select studno || name as "studentContent"
from student;

-- �л��� �����Ը� pound�� ȯ���ϰ� Į�� �̸��� ��weight_pound�� ��� �������� ���. 
-- 1kg�� 2.2pound
select studno,
       weight*2.2 as "weight_pound"
from student;

--���̰� �����ϰ� Ÿ���� �ٸ� Į���� ���� ���̺� ����
CREATE TABLE ex_type(
    c char(10),
    v varchar2(10)
)
INSERT INTO ex_type
Values ('sql','sql');       
INSERT INTO ex_type
Values ('sql2','sql2');

commit;

--���ǹ� ó�� �� WHERE
SELECT * FROM ex_type --��� �� �����ش�
WHERE c = 'sql';      -- �� ���� [ c = 'sql' ]�� �ش�Row�� �����ش�

SELECT * FROM ex_type -- ��� �� �����ش�
WHERE v = 'sql';      -- �� ���� [ v = 'sql' ]�� �ش�Row�� �����ش�

SELECT * FROM ex_type  
WHERE c = v;          -- �� ���� [ c = v ]�� �ش�Row�� �����ش�. 




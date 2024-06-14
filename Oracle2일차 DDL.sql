--DDL
--Data Definition Language ������ ���Ǿ�
-- ����Ŭ�� ��ü�� ����, ����, �����ϴ� ���
-- Create , Alter , Drop, TRUNCATE...
commit;
comment on column EMPLOYEE .T_CODE IS '�����ڵ�';
comment on column employee .name IS '�����';
comment on column employee .D_code IS '�μ��ڵ�';
comment on column employee .age IS '����';

-- comment on column ���̺��.�÷��� IS '���� ����';

desc employee; -- Describe employee

--���� ���� KH/ KH
-- ���� ���� , ���� ���� �ο�.
create user KH identified by KH;
grant connect to KH;
grant resource to KH;

--kh violet
-- alter(����Ŭ ��ü)
-- Alter: �������� �߰� , ���� ,�̸� ����
-- �÷� �߰�, ����, �÷� ������ Ÿ�� ���� , �÷��� ����, ���̺�� ����, �÷� ����
select * from user_constraints where table_name ='EMPLOYEE';
select * from user_constraints where table_name ='DEPARTMENT';
---------------------------------------------------------------------------
desc user_grade;
--���̺� �÷� �߰� , ���� , ������Ÿ�� ����, �÷��� ����, ���̺� �� ����
alter TABLE user_grade add grade_date date; 
alter table user_grade DROP COLumn grade_date;
alter table user_grade modify grade_name char(12);
alter table user_grade rename column grade_date to reg_date;
alter table user_grade rename to grade_TBL;
rename grade_TBL to user_grade;
desc grade_TBL;
-----------------------------------------------------------------------------
create table user_grade(
    grade_code number ,
    grade_name varchar2(30) 
);
select *from user_grade;
insert into user_grade values (10,'�Ϲ�ȸ��');
insert into user_grade values (20,'���ȸ��');
insert into user_grade values (30,'Ư��ȸ��');
insert into user_grade values (40,'VIPȸ��');
---------------------------------------------------------------

create table user_foreign_key1(
user_num number,
user_id varchar2(20),
user_pwd varchar2(30),
user_name varchar2(30),
user_gender varchar(10) , --data�� �ش� �ܾ ���Եǰ���
user_phone varchar2(30),
user_email varchar2(50),
user_date date default sysdate,
grade_code number
);

insert into user_foreign_key1 
values (1,'khuser01','pass01','�Ͽ���','M','01082829292','khuser01@naver.com',default,10);
insert into  user_foreign_key1 
values (2,'khuser02','pass02','�̿���','M','01082829292','khuser01@naver.com',default,20);
insert into  user_foreign_key1  
values (3,'khuser03','pass03','�����','M','01082829292','khuser01@naver.com',default,30);
insert into  user_foreign_key1  
values (4,'khuser04','pass04','�����','M','01082829292','khuser01@naver.com',default,40);
-------------------------------------------------------------------------------
CREATE TABLE USER_FOREIGN_KEY(
    USER_NO NUMBER ,
    USER_ID VARCHAR2(20),
    USER_PWD VARCHAR2(30) ,
    USER_NAME VARCHAR2(30),
    USER_GENDER VARCHAR2(10) ,
    USER_PHONE VARCHAR2(30),
    USER_EMAIL VARCHAR2(50),
    USER_DATE DATE DEFAULT SYSDATE,
    GRADE_CODE NUMBER 
);
INSERT INTO USER_FOREIGN_KEY
VALUES(1, 'khuser01', 'pass01', '�Ͽ���', 'M', null, null, DEFAULT, 10);
INSERT INTO USER_FOREIGN_KEY
VALUES(2, 'khuser02', 'pass02', '�̿���', 'M', null, null, DEFAULT, 20);
INSERT INTO USER_FOREIGN_KEY
VALUES(3, 'khuser03', 'pass03', '�����', 'M', null, null, DEFAULT, 30);
INSERT INTO USER_FOREIGN_KEY
VALUES(4, 'khuser04', 'pass04', '�����', 'M', null, null, DEFAULT, 40);


drop table user_foreign_key;
select * from user_foreign_key;
------------------------------------------------------------------------------------------
-- �������� & Alter 
--1. ���� ���� �߰�
--2. ���� ���� ����
--3. ���� ���� ����

------1-----
alter table user_grade add constraint pk_grade_code primary key(grade_code);
alter table user_foreign_key add constraint fk_grade_code foreign key(grade_code) references user_grade(grade_code);
------2------
alter table user_grade DROP constraint pk_grade_code ;
------3------
alter table user_grade modify constraint; 
-----------------------------------------------------------------------------
--ex1 user_foreign_key ���̺� suer_date date �÷� �߰� 
--ex1 user_foreign_key ���̺� suer_date date �÷� ���� 
--ex1 user_foreign_key ���̺� suer_date date �÷� �ڷ��� varchar2(10)���� ����
--ex1 user_foreign_key ���̺� suer_date date �÷��� �̸��� reg_date �� ����
--ex1 user_foreign_key ���̺��� �̸��� user_tbl�� �ٲ��ּ���
------------------------------------------------------------------------
alter table user_foreign_key add user_date date;
alter table user_foreign_key DROP column user_date;
alter table user_foreign_key modify user_date varchar2(10); 
alter table user_foreign_key rename column user_date to REG_date;
alter table user_foreign_key rename to user_TBL;
rename user_TBL to user_foreign_key;
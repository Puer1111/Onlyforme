create table user_no_constraint(
user_num number,
user_id varchar2(20),
user_pwd varchar2(20),
user_name varchar2(30),
user_gender varchar(10),
user_phone varchar2(30),
user_email varchar2(50)
);
select * from user_no_constraint;
--1 khuser01 pass01 �Ͽ��� �� 01028227373 khuser01@gmail.com
Insert into user_no_constraint
values(1,'khuser01','pass01','�Ͽ���','��',01028227373,'khuser01@gmail.com');

select * from user_no_constraint;
update user_no_constraint set user_phone = '01028227373'
where user_phone = 01028227373;
commit;
rollback;
insert INTO user_no_constraint
values(null,null,null,null,null,null,null);

create table user_notnull ( -- notnull
user_num number,
user_id varchar2(20) not null,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10),
user_phone varchar2(30),
user_email varchar2(50)
);
drop table user_notnull;
select * from user_notnull;
insert into user_notnull
values(1,'khuser01','pass01','�Ͽ���',null,null,null);

create table user_unique ( --unique ���
user_num number,
user_id varchar2(20) unique,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10),
user_phone varchar2(30),
user_email varchar2(50)
);
insert into user_unique
values(1,'khuser01','pass01','�Ͽ���','��',01028227373,'khuser01@gmail.com');
select * from user_unique;

create table user_primary_key ( --primarykey ���
user_num number,
user_id varchar2(20) PRIMARY key,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10),
user_phone varchar2(30),
user_email varchar2(50)
);
insert into user_primary_key
values(1,'khuser01','pass01','�Ͽ���','��',null,null);
select * from user_primary_key;
drop table primary_key;

create table user_check (
user_num number,
user_id varchar2(20) PRIMARY key,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10) check(user_gender in ('M','F')), --data�� �ش� �ܾ ���Եǰ���
user_phone varchar2(30),
user_email varchar2(50)
);
insert into user_check values(1,'khuser01','pass01','�Ͽ���','M','01028227373','khuser01@gmail.com');
insert into user_check values(2,'khuser02','pass01','�̿���','F','01028227373','khuser01@gmail.com');
select * from user_check;
delete from user_check where user_pwd = 'pass01';
commit;

create table user_default (
user_num number,
user_id varchar2(20) PRIMARY key,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10) check(user_gender in ('M','F')), --data�� �ش� �ܾ ���Եǰ���
user_phone varchar2(30),
user_email varchar2(50),
user_date date default sysdate
);
-- default �� �̸� �����صΰ� �ش� ��ġ�� default�� �ۼ�.
drop table user_default;
insert into user_default values (1,'khuser01','pass01','�Ͽ���','M','01082829292','khuser01@naver.com','24/06/14');
select * from user_default;
insert into user_default values (2,'khuser02','pass02','�̿���','M','01082829292','khuser01@naver.com',sysdate);
insert into user_default values (3,'khuser03','pass03','�Ͽ���','M','01082829292','khuser01@naver.com',default);

create table user_grade(
    grade_code number ,
    grade_name varchar2(30)
);

select *from user_grade;
insert into user_grade values (10,'�Ϲ�ȸ��');
insert into user_grade values (20,'���ȸ��');
insert into user_grade values (30,'Ư��ȸ��');
insert into user_grade values (40,'VIPȸ��');

delete from user_grade where grade_code = 40;

create table user_foreign_key1(
user_num number primary key,
user_id varchar2(20) unique not null,
user_pwd varchar2(30) not null,
user_name varchar2(30)not NULL,
user_gender varchar(10) check(user_gender in ('M','F')), --data�� �ش� �ܾ ���Եǰ���
user_phone varchar2(30),
user_email varchar2(50),
user_date date default sysdate,
grade_code number references user_grade(grade_code) on delete cascade
);
drop table user_foreign_key1;
insert into user_foreign_key1 
values (1,'khuser01','pass01','�Ͽ���','M','01082829292','khuser01@naver.com',default,10);
insert into  user_foreign_key1 
values (2,'khuser02','pass02','�̿���','M','01082829292','khuser01@naver.com',default,20);
insert into  user_foreign_key1  
values (3,'khuser03','pass03','�����','M','01082829292','khuser01@naver.com',default,30);
insert into  user_foreign_key1  
values (4,'khuser04','pass04','�����','M','01082829292','khuser01@naver.com',default,40);

update user_foreign_key1 set grade_code = 40 where user_id = 'khuser04'; 

select * from user_foreign_key1;
delete from user_grade where grade_code=40;


--on delete set null
-- �ش� ���ڵ� ���� ������ �� null �� �ڵ� ��ü
--on delete cascade 
-- �θ� ���̺��� ���ڵ� ���� �������� �ش� ���� �ܷ�Ű�� ���� ���̺��� ���� ��������.

--ex)
--table: shop_member
--data : 1. khuser01, pass01,�Ͽ���,M,01082829292,khuser01@gmail.com

--table: shop_buy
--data: 1. khuser01 , ��ȭ ,24/06/14


--A. ID�� �ܷ� Ű�� buy���� member�� ID�� ������ Ȯ���ϴ� �ý����̱⿡ ID�� �ܷ�Ű �ۼ�.
create table shop_member(
user_num number primary key,
user_id varchar2(20) unique not null,
user_pwd varchar2(30) not null,
user_name varchar2(30) not NULL,
user_gender varchar(10) check(user_gender in ('M','F')), --data�� �ش� �ܾ ���Եǰ���
user_phone varchar2(30),
user_email varchar2(50)
);
insert into shop_member values(1, 'khuser01', 'pass01','�Ͽ���','M','01082829292','khuser01@gmail.com');
select * from shop_member;

create table shop_buy(
buy_no number primary KEY,
user_id varchar2(30) references shop_member(user_id) on delete set null,
user_purchase varchar2(20),
user_date date default sysdate
);

insert  into shop_buy values ( 1., 'khuser01' , '��ȭ' ,default);
insert  into shop_buy values ( 2., 'khuser02' , '�౸ȭ' ,default); 
-- khuser02 �ȵǴ� ������ shop member�� khuser02�� ��� �̴�.
select * from shop_buy;
drop table shop_buy;


--constraint
--Not null: null ������ �Ѵ�
--unique : ������ �� �ߺ� x ,null ����
--primary key : �⺻ Ű , null+unique
--check : check(�÷��� in (��) ) ���� ���� ���� �Ѵ�.
--default: ������ �����ص� �� default�� �ۼ� �� ���.
--foreign key: �ڽ� ���̺��� �θ� ���̺��� ������ �ִ� �÷��� �ʵ尪���ҳ� insert�ϵ��� �ϴ� ��
-- "���� ���Ἲ" �� �����ϴ� ��������
--�ܷ� Ű ��ɾ�: references �θ����̺�(�÷���) �����ɼ�(on delete set null , on delete cascade)
-- ���� �ɼ�
--1. on delete restricted ����� ����
--2. on delete cascade ������ ��� �� ����
--3. on delete set null null�� �����.
show user;

create table employee(
 name varchar2(20),
 t_code varchar2(10),
 d_code varchar2(10),
 age number
 );
 
 -- 1. �÷��� ������ Ÿ�Ծ��� ���̺� �����Ͽ� ������
 -- A. ������ Ÿ�� �ۼ�
 -- 2. ���� ���� ���̺��� �����Ͽ� ������
 -- A. system �������� grant resource to khuser01 ����
 -- 3. �������� �� �� ����, �� ��ũ��Ʈ�� �ƴ� ���� �ڵ� �ۼ��� ��ũ��Ʈ���� ���� ����
 -- �Ͽ� ��ɾ� �����
 
 insert into employee(name,t_code,d_code,age) 
 values('�Ͽ���','t1','d1',13);
 insert into employee(name,t_code,d_code,age) 
 values('�̿���','t2','d2',23);
 insert into employee(name,t_code,d_code,age) 
 values('�����','t3','d3',33);
 
 drop table employee;
 
 delete from employee
 where name= '�Ͽ���' and t_code='t2';
 
 update employee set t_code='t3'
 where name = '�Ͽ���';
 
 select * from employee;
 
 
 -- �̸��� Student_tbl �� ���̺� �����
 -- �̸� ���� �г� �ּ� ���� �� �� �ְ� �ϰ�
 -- �Ͽ���,21,1,����� �߱��� �������ּ���
 --�Ͽ��ڸ� ����ڷ� �ٲ��ּ���
 --�����͸� �����ϴ� �������� �ۼ��ϰ� ������ Ȯ���ϰ�
 -- ���̺��� �����ϴ� �������� �ۼ��ϰ� ���̺긮 ����� �� Ȯ���϶�
 
 Create table Student_TBL(
name varchar2(20),
age number(20),
grade number,
address varchar2(20)
);

insert into Student_TBL
values('�Ͽ���',21,1,'����� �߱�');
Rollback; -- Ŀ�� �������� ���ư�

update Student_TBL
set name = '�����' where name = '�Ͽ���';
commit; -- �ѹ� ��� ����.
delete from Student_TBL;

drop table Student_TBL;

select * from Student_TBL;

--���̵� khuser02 , ��й�ȣ�� khuser02 ����.

show user;

-- khuser02 student table 
create table Student_tbl(
name varchar2(20),
age number,
grade number,
address varchar2(20)
);


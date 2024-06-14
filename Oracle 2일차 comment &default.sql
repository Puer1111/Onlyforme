create table job(
job_code char(2) not null,
job_name varchar2(35)
);
drop table job;
select * from job;
comment on column job.job_code IS '�����ڵ�';
comment on column job.job_name IS '���޸�';


create table department(
job_code char(2) not null,
job_name varchar2(35),
location_id char(2) not null
);

comment on column department.job_code IS '�μ��ڵ�';
comment on column department.job_name IS '�μ���';
comment on column department.location_id IS '�����ڵ�';


create table employee(
emp_id varchar2(3) not null,
emp_name varchar2(20) not null,
emp_no char(14) not null,
email varchar2(25),
phone varchar2(12),
dept_code char(2),
job_code char(2) not null,
sal_level char(2) not null,
salary number,
bonus number,
mananger_id varchar2(3),
hire_date date,
ent_date date,
ent_yn char(1) default 'N'
);
drop table employee;
comment on column employee.emp_id IS '�����ȣ';
comment on column employee.emp_name IS ' ������';
comment on column employee.emp_no IS '�ֹε�Ϲ�ȣ';
comment on column employee.email IS '�̸���';
comment on column employee.phone IS '��ȭ��ȣ';
comment on column employee.dept_code IS '�μ��ڵ�';
comment on column employee.job_code is'���� �ڵ�';
comment on column employee.sal_level is '�޿� ���';
comment on column employee.salary is '�޿�';
comment on column employee.bonus is ' ���ʽ���';
comment on column employee.mananger_id is '������ ���';
comment on column employee.hire_date is '�Ի���';
comment on column employee.ent_date is '�����';
comment on column employee.ent_yn is '���� ����';


-- 200, ������ ,621231-1986634 ,sun-di#kh.or.kr, 01099546325
-- D9,J1,S1,8000000, 0.3 , x ,2013,02,06 ,X ,N 

Insert into employee values (200,'������','621231-1986634','sun-di@kh.or.kr',01099546325,
'D9','J1','S1',8000000,0.3,null,'2013/02/06',null ,default); 
select * from employee;
select * from employee where emp_id = '200';
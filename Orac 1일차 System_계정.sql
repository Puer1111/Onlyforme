show user;

select * from dictionary;
grant resource to khuser01;

create user khuser02 identified by khuser02;
grant connect to khuser02;
grant resource to khuser02;
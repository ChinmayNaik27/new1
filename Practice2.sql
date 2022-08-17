--Creating table with constraints and their name

create table emp505
	(eno number(6) constraint emp505_eno_nn not null,
	 name varchar2(8) constraint emp505_ename_nn not null,
	 salary number(8)
	);


comment on column emp505.eno is
  'This is a Employ Number';
comment on column emp505.salary is
  'This is a Employ Salary';
comment on column emp505.name is
  'This is a Employ Name';
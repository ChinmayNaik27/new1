--creating a table for emp601
/*
DEVELOPING PURPOSE     : PRACTICE

*/

create table emp601
	(eno number(5,2) constraint emp601_eno_nn_uk not null unique,
	ename varchar2(12) constraint emp601_ename_nn not null,
	salary number(9)
	);

--adding comments 
 	comment on table emp601 is
	   'This is a practice table';
	comment on column emp601.eno is
	 	'This is employ number';
	comment on column emp601.ename is
		'This is name of the employ';
	comment on column emp601.salary is
		'Salary of the employ';
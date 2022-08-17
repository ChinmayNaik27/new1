--creating a primary key

create table emp507
	(eno number(6) constraint emp507_eno_pk primary key,
 	 ename varchar2(7) constraint emp507_ename_nn not null,
	 age number(2) constraint emp507_age_nn not null,
	 salary number(9,-2)
	);

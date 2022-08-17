--creating check constraint

create table emp509
	(eno number(6) constraint emp509_eno_nn not null,
	gender char constraint emp509_gender_ck check(
								gender in('M','F')
								    )
	);

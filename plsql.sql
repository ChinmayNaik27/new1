declare
	v_eno emp1.eno%type;
	v_ename emp1.ename%type;
	v_job emp1.job%type;
	v_sal emp1.sal%type;
	v_comm emp1.comm%type;
	v_deptno emp1.deptno%type;

begin
	select eno,ename,comm,sal into v_eno,v_ename,v_comm,v_sal from emp1
	where id ='&eno';

	if v_sal > 9000 then
	v_comm:=
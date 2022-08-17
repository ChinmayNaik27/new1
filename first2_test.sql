declare
	emp_cur1 sys_refcursor;
	erec employ%rowtype;
begin
	emp_cur1:=f_get_employs('F');
	loop
	fetch emp_cur1 into erec;
	exit when emp_cur1%notfound;
	dbms_output.put_line(erec.eno || ' ' || erec.ename || ' ' ||
erec.gender || ' ' || erec.salary);
	end loop;
	end;
/

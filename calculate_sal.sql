--creating PLSQL for calculate salary

/*
DEVELOPER NAME		 : CHINMAY NAIK
DEVELOPER TOPIC		 : PLSQL SCRIPT FOR CALCULATE_SAL
DEVELOPED DATE           : 19-03-2021
DEVELOPED TIME           : 10:48 AM
VERSION                  : 2.0
*/

declare
	v_eno emp2.eno%type;
	v_ename emp2.ename%type;
	v_basic emp2.basic%type;
	v_hra emp2.hra%type;
	v_tsal emp2.tsal%type;

begin
	select eno,ename,basic,hra,tsal into v_eno,v_ename,v_basic,v_hra,v_tsal from emp2
	where eno='&eno';
	if v_basic > 25000 then
  		v_hra:=v_basic *.2;
      else
		v_hra:=v_basic * .1;
	end if;
	v_tsal:=v_basic + v_hra;

--Updating values in table
update emp2 set tsal=v_tsal,hra=v_hra where ename=v_ename;
--Displaying output
dbms_output.put_line('The Employee No is:' || v_eno);
dbms_output.put_line('The Employee Name is:' || v_ename);
dbms_output.put_line('The Employee Basic salary is:' || v_basic);
dbms_output.put_line('The Employee hra is:' || v_hra);
dbms_output.put_line('The Employee Total salary is:' || v_tsal);
end;
/

select * from emp2;
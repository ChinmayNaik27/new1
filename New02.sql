create or replace procedure p_emp601
(p_eno emp601.eno%type,
 p_ename emp601.ename%type,
 p_salary emp601.salary%type)
is 
begin
   insert into emp601 values(p_eno,p_ename,p_salary);
if sql%rowcount=1 then
dbms_output.put_line('Enter successful !!');
else 
dbms_output.put_line('Failed insertion!!');
end if;
end;
/
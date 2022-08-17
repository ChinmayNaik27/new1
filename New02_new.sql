create or replace procedure p_emp601_new
(p_record emp601%rowtype)
is 
begin
	insert into emp601 values p_record;
if sql%rowcount =1 then
	dbms_output.put_line('Success!!');
else 
	dbms_output.put_line('New!!');
end if;
end;
/
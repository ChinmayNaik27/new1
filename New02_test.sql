declare

v_eno emp601.eno%type;
v_ename emp601.ename%type;
v_salary emp601.salary%type;

begin
 v_eno:='&eno';
 v_ename:='&ename';
 v_salary:='&salary';

p_emp601(v_eno,v_ename,v_salary);
end;
/
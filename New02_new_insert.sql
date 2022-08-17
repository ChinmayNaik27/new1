declare
prod emp601%rowtype;
begin
prod.eno:='&eno';
prod.ename:='&ename';
prod.salary:='&salary';

p_emp601_new(prod);
end;
/
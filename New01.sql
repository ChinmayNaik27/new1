declare
  myname varchar2(60);
begin
  myname:='&myname';
dbms_output.put_line(f_list || 'Do you have them' || myname);
end;
/
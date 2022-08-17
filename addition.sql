--Creating script for addition.sql
/*

DEVELOPER NAME      : CHINMAY NAIK
DEVELOPER TOPIC     : ADDITION SCRIPT
DEVELOPED TIME      : 07:56 AM
DEVELOPED DATE      : 18-Mar-22
VERSION             : 1.0
*/
--declaring values for variables
declare
	n1 number(10);
	n2 number(20);
	sume number(30);
begin
	n1:='&n1';
	n2:='&n2';
	sume:=(n1 + n2);
	dbms_output.put_line('The Addition is:' || sume);
end;
/
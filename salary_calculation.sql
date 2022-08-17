--creating script for salary calculation
/*
DEVELOPER NAME            : CHINMAY NAIK
DEVELOPER SCRIPT NAME     : SALARY_CALCULATION
DEVELOPED DATE            : 18-Mar-22
DEVELOPED TIME            : 08:06 AM
VERSION                   : 1.0
*/
--creating script

--declareing variables
declare
	eno number(10);
	ename varchar2(30);
	basic_salary number(9,2);
	hra number(9);
	tsal number(4,-2);

--execution block begins
begin
	eno:='&eno';
	ename:='&ename';
	basic_salary:='&basic_salary';
	hra:=(0.2 * basic_salary);
	tsal:=(basic_salary + hra);

--displaying output
dbms_output.put_line( ' Employee Number: '||eno||' Ename: ' || ename || ' Basic Salary : '||basic_salary);
dbms_output.put_line('The HRA on Your Salary is:' || hra);
dbms_output.put_line('The Total Salary is:' || tsal);


end;
/
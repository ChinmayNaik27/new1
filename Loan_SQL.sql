--Creating a table for CIBC Loan Requirement
/*
Application Name : Loan_Lending
Devloper Name    : Chinmay Naik
Developed Date   : 14-Mar-2022
Developed Time   : 11:02 AM
Version          : 1.0
*/

--creating table for loan_product...

create table loan_product
	(Prod_id char(8),
	 Prod_title varchar2(30),
	 prod_summary varchar2(150),
	 interest_type char default 'F',
	 interest_rate number(4,2),
	 security_reqd char default 'O',
       Min_loan_amt number(9,-2),
	 Max_loan_amt number(9,-2),
	 Term_min interval year to month,
	 term_max interval year to month,
	 repayment_frequency interval year to month,
	 repayment_amount number(9,2),
	 early_repay_allowed char,
	 min_age_limit number(2),
	 max_age_limit number(2),
	 resident varchar2(15),
	 Prod_start_dt date,
	 Prod_end_dt date,
	 Prod_status char default 'O'
	);

--Adding Comments to the Columns and tables...

   comment on table Loan_product is
     'This is a script for Loan_Lending Script for cdbic bank';

   comment on column loan_product.Prod_title is
     'It is the main description about the loan product';

   comment on column loan_product.Prod_id is
     'This is used to auto generate prod_id from prod_tittle,This is unique';

   comment on column loan_product.prod_summary is
     'It is detailed description of loan product';

   comment on column loan_product.security_reqd is
	'It is (O) Optional (M) Mandatory. Default is O';

   comment on column loan_product.interest_type is
	'Fixed type (as per fedral Reserve),Variable type. Default is F';

   comment on column loan_product.interest_rate is
	'This is Rate Of Interest';

   comment on column loan_product.Min_loan_amt is
	'This is The Minimum loan amount that can be given to a customer';

   comment on column loan_product.Max_loan_amt is
       'This is The maximum loan amount that can be given to a customer';

   comment on column loan_product.Term_min is
	  'Minimum duration of time for repaying the loan amount';

   comment on column loan_product.Term_max is
	  'Maximum duration of time for repaying the loan amount';

   comment on column loan_product.Repayment_frequency is
	  'The interval for repaying loan installment. 0-1 indicates monthly installment payment';

   comment on column loan_product.repayment_amount is
	  'Installment loan amount';

   comment on column loan_product.Early_repay_allowed is
	  'Reply in yes or no';

   comment on column loan_product.Min_age_limit is
	  'Minimum age considered for giving loan';

   comment on column loan_product.Max_age_limit is
	  'Maximum age considered for giving loan';

   comment on column loan_product.Resident is
	  'Country name where the customer is residing';

   comment on column loan_product.Prod_start_dt is
	  'Loan product launched date';

   comment on column loan_product.Prod_end_dt is
	  'Loan product closed or teminated date';

   comment on column loan_product.Prod_status is
	  'O)-Open,(C)-Closed,(H)-Hold.Default O';
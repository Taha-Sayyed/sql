-- 1] Concat

/*
	Query: Show a list of 
	customers first name together with their country in one column
*/

select 
	first_name,
	country,
	CONCAT(first_name,' ',country) as Name_Country
from customers;

-- 2] Upper & Lower 
/*
	Query: Transform the customers first name to lowercase
*/

select 
	first_name,
	country,
	lower(first_name) as Lower_case,
	upper(first_name) as Upper_case
from customers;

--3] Trim
/*
	Query: Find the customers whose first name contain 
	leading or trailing space 
*/

select 
	first_name
from customers
where first_name != trim(first_name);

-- OR

select 
	first_name,
	length(first_name)  len_name,
	length(trim(first_name))  len_trim_name,
	length(first_name) -length(trim(first_name)) flag
from customers
where length(first_name) != length(trim(first_name));


-- 4] Replace

/*
	Query: Remove dashes from a phone number
*/

select 
	'123-345-546' as phone,
replace('123-345-546','-','/');

/*
	Query: Replace File Extence from txt to csv
*/

select 
'report.txt',
replace('report.txt','.txt','.csv'); 
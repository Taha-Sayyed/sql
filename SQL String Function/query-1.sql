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

-- 5] Left
--Query: Retrieve the first two character of each first name

select 
	first_name,
	left(trim(first_name),2) as first_two_character
from customers;

--Query: Retrieve the last two character of each first name

select 
	first_name,
	right(trim(first_name),2) as first_two_character
from customers; 

-- 6] Substring

-- SUBSTRING(Value,Start,Length)

/*
	Query: Retrieve a list of customer first name after 
	removing the first character
*/

select
	first_name,
	substring(first_name,2,length(first_name)) as Sub_name
from customers;
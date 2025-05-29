-- Now instead of writing manually scripts, we are moving data from source to target table

/*	Procedure: 1] Select from the 'SOURCE' table
			   2] Insert using SELECT to target table
*/

--Query-1: Insert data from customers into persons

select * from customers
select * from persons



insert into persons (id,person_name,birth_date,phone)
select 
	id,
	first_name,
	NULL,
	'Unknown'
from customers


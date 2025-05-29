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


/* 

Update Syntax
	
	update table_name
	set column1 = value1,
		column2 = value2
	where <condition>

Note: Always use WHERE to avoid updating all the rows unintentinally

*/

-- Query-2: Change the score to zero whose custoomer id = 6

update customers
set score=0
where id=6

select * from customers

-- Query-3: Change the score of customer with id=10 to 0 and update the country to UK

update customers
set score=0, country='UK'
where id=9

--Query-4: Update all the customers with a NULL score by setting their score to 0

update customers
set score=0
where score is NULL

/*
	DELETE Syntax
	
	delete from table_name
	where <condition>

	Note: Always use WHERE to avoid deleting all the rows unintentinally

*/

--Query-5: Delete all the customers with an ID greater then 5

delete from customers
where id > 5

--Query-6: Delete all the data from table person
truncate table persons
-- INSERT | UPDATE | DELETE

--Manual Entry to table

/* SYNTAX
	
	insert into table_name (col1,col2,col3)
	values (val1,val2,val3),
		   (val1,val2,val3)

*/

/*
	Rule-1: columns and values must be in the order
	Rule-2: Columns not included in INSERT becomes NULL (unless a default or constraint exist)
*/

insert into customers (id, first_name, country, score)
values 
	(6,'Anna','USA',NULL),
	(7,'Sam',NULL,100)


insert into customers
values 
	(8,'Anna','USA',NULL),
	(9,'Sam',NULL,100)

insert into customers (id, first_name) 
values
	(10,'Sahara')

select * from customers

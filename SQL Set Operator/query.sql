-- 1] Union
-- Combine the data from the employee & customers into one table

select 
	firstname as First_Name,
	lastname as Last_Name
from sales.customers
UNION
select 
	firstname,
	lastname 
from sales.employees

-- 2] Union All
-- Combine the data from the employee & customers into one table including the duplicates

select 
	firstname as First_Name,
	lastname as Last_Name
from sales.customers
UNION ALL
select 
	firstname,
	lastname 
from sales.employees


-- 3] Except
--Query: Find the employees who are not customers at the same time

select 
	firstname,
	lastname
from sales.employees
except
select 
	firstname,
	lastname
from sales.customers;

--4] Intersect
--Query: Find employess who are also customers

select 
	firstname,
	lastname
from sales.employees
intersect
select 
	firstname,
	lastname
from sales.customers;


-- Applications of SET Operators
--1] Combine Information

/*
	Query: Orders are stored in separate table (Orders and Orderarchive)
		   Combine all the orders into one report ithout duplicates
*/

SELECT  
	'Orders' as SourceTable,
	orderid,
	productid,
	customerid
FROM sales.orders
union
SELECT  
	'Ordersarchive' as SourceTable,
	orderid,
	productid,
	customerid
FROM sales.ordersarchive

-- 2] Delta Detection
/* Mostly use in pipeline to identify the new data using the concept of 
   'EXCEPT' operator 
    For more refer the notes
*/

-- 3] Data Completeness Check
/*
	Mostly use in a scenario where a table is migrated from Database A to B
	and we need to check that whether in the Database B, all the data is 
	shifted successfully
	
	--Refer notes for more detail explanation
*/
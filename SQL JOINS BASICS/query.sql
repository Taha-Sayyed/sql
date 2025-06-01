-- JOINS

--1} NO Joins

-- Query: Retrieve all data from customers and orders in two different results

select * 
from customers;

select * 
from orders;

-- 2] Inner Joins: Returns only Matching rows from both the table

/*Query: Get all the customers along with their orders, but only for customers 
who have placed an order */

select 
	customers.id, --Prefer using the table name while selecting the column
	customers.first_name,
	orders.order_id,
	orders.sales
from customers
inner join orders
on id=customer_id;

select *
from customers
inner join orders
on id=customer_id;


select 
	c.id, --Prefer using the table name while selecting the column
	c.first_name,
	o.order_id,
	o.sales
from customers as c
inner join orders as o
on c.id=o.customer_id;


-- 3] Left Joins: Returns all rows from left and only matching from right 

--Query: Get all the customers along with their orders including those without orders

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c   
left join orders as o
on c.id=o.customer_id


select *	
from customers as c   
left join orders as o
on c.id=o.customer_id

-- 4] Right Joins: Return all rows from the right and only matching rows from left

--Query: Get all customers along with their orders, including orders without matching the customers

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
right join orders as o
on c.id=o.customer_id

-- Query: Get all customers along with their orders, including orders without matching the customers [using left join]

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from orders as o
left join customers as c
on o.customer_id=c.id

-- 5] Full join
--Query: Get all the customers and all the orders, even if there is no match

select 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
from customers as c
full join orders as o
on c.id=o.customer_id

-- Advanced Joins

select * 
from customers;

select * 
from orders;


-- 1] Left Anti Joins

--Query: Get all the customers who haven't place any order

select * 
from customers as c
left join orders as o
on c.id=o.customer_id
where o.customer_id is null

-- 2] Right Anti Joins

--Query: Get all the orders without matching customers

select * 
from customers as c
right join orders as o
on o.customer_id=c.id
where c.id is null

--Query: Get all the orders without matching customers [using Left Anti join]

select *
from orders as o 
left join customers as c
on o.customer_id=c.id
where c.id is null


-- 3] FUll Anti Joins

--Query: Find the customers without orders and orders without customers

select * 
from orders as o
full join customers as c
on o.customer_id=c.id
where c.id is null or o.customer_id is null


-- 4] Advance Inner Joins
--Query: Get all the customers along with their orders, but only for customers who have placed an order(Without using inner join)

select * 
from customers as c
left join orders as o
on o.customer_id=c.id
where o.customer_id is not null

-- 5] Cross Joins

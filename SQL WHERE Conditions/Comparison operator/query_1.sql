
-- "=" Checks if two value are equal 

-- Query-1: Retrieve all customers from Germany

select * from customers where country='Germany' 


-- "!=" Check if two values are not equal

-- Query-2: Retrieve all customers who are not from Germany

select * 
from customers
where country != 'Germany'


-- ">" Checks if a value is greater than another value

--Query-3: Retrieve all customers with a score greater then 500
select *
from customers
where score>500

-- ">=" Checks if a value is greater than or equal to another value

--Query-4: Retrieve all customers with a score greater or equal to 500

select *
from customers
where score>=500





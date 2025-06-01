/*  Logical Operator -> OR, AND */


-- Retreive all the cusotmers who are either from USA or have a score greater then 500

select * 
from customers
where country='USA' or score>500;

-- Retreive all the cusotmers who are either from USA and have a score greater then 500

select * 
from customers
where country='USA' and score>500;

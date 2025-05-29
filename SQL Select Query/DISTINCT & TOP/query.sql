/*DISTINCT: Remove the duplicates and */

/* Query-1: Return Unique list of all the countries */

select distinct country 
from customers

/*Query-2: Return top 3 customers with the highest score */

select top 3 *
from customers
order by score desc

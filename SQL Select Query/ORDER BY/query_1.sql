/*IN order by we can sort the data in ascending and descending order*/

--Retrieve all the customers and sort the result by the highest score first 

select * 
from customers
order by score desc


--Nested Order by
/*Retrieve all the customers and sort the results by country and and then the
by highest score*/

--Note: Column order in "ORDER BY" is crucial as sorting is sequential

select * 
from customers
order by country asc, score desc

select * 
from customers
order by score desc,country desc



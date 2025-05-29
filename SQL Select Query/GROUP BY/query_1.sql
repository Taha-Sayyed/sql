--Combine row with the same value
-- Aggregate the column by another column

--Query-1:Find the total score for each country
select 
	country,
	SUM(score) as Total_score
from customers
group by country

/* Rule: All the column in SELECT must be either aggregated or included
in the GROUP BY */

select 
	country,
	first_name,
	SUM(score) as Total_score
from customers
group by country,first_name

--Query-2: Find the total score and total number of customers for each country

select 
	SUM(score) as Total_score,
	COUNT(id) as Total_Customers,
	country
from customers
group by country
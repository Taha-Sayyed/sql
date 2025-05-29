/* HAVING CLAUSE: Filter data only after aggregation and can be used with only "Group by" */


/*We use "WHERE" clause to filter before aggregation and "HAVING" clause to filter after aggregation*/

/*Query-1: Find the average score for each country cosnidering
only customers with a score not equal to zero and return only
those countries with an avergae score greater then 430*/

select
	country,
	AVG(score) as Average_score
from customers
where score !=0
group by country
having AVG(score)>430
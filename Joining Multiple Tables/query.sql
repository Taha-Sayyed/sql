--Joining Multiple Tables

/* Query: Using SalesDB, Retrieve a list of all orders along with the related 
customer, product, & employee detail 

For each order, display:

orderid
Customers name
Product Name
Sales amount
Product price
Employee name

*/

select 
	o.orderid,
	c.firstname as Customers_FirstName,
	c.lastname as Customers_LastName,
	p.product as Product_Name,
	o.sales as Sales_Amount,
	p.price as Product_Price,
	e.firstname as Employee_FirstName,
	e.lastname as Employee_LastName
	
	
	
from sales.orders as o
left join sales.customers as c on o.customerid = c.customerid
left join sales.products as p on o.productid = p.productid
left join sales.employees as e on o.salespersonid = e.employeeid




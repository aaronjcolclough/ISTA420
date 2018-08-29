.echo on
.headers on

-- Name: Aaron Colclough
-- File: TSQL-Lab5.sql
-- Date: Aug 28, 2018

-- 1. List the number of orders by each customer who lives in the United States using a CTE. Sort from highest to lowest.

with USAcust as
(
select customerid
from customers 
	where country = 'USA'
)
select o.customerid, count(o.orderid) as numord 
from orders o
	where o.customerid in USAcust
	group by o.customerid
	order by numord desc;

-- 2. List the product name and the number of each product from a German supplier sold to a customer in Germany using a CTE.
-- Sort from highest to lowest.

with GerProd as
	(
	select p.productid, p.productname, s.supplierid, s.country
	from products p
		join suppliers s
			on p.supplierid = s.supplierid
	where s.country = 'Germany'
	),
GerOrd as
	(
	select od.productid, od.orderid, od.quantity, o.shipcountry
	from orders o
		join order_details od
			on od.orderid = o.orderid
	where o.shipcountry = 'Germany'
	)
	
select GP.productname, sum(GO.quantity) as numprod
from GerProd GP
	join GerOrd GO
		on GP.productid = GO.productid
group by GP.productid
order by numprod desc;

-- 3. Prepare an employee report showing the name of each employee, the number of employees they supervise, 
-- and the name of their supervisor using a CTE. Sort by the number of employees supervised.


/* 4. One purpose of views is to denormalize databases for the purpose of eﬃciency, 
both machine eﬃciency and programmer eﬃciency. Creating denormalized objects can turn complex queries into simple ones.
For example, suppose you needed a list of all employees who took orders for a speciﬁc customer, 
or all customers who were served by a speciﬁc employee. 
You can create a “table” as a view that contains distinct pairs of customers and employees. 
This is somewhat complex, so do this in steps.*/

--(a) Create a query that returns every distinct customer/employee pair.


-- (b) Use that query to write another query turning the customerid, customername, and customercontact, 
--  and the employeeid, ﬁrstname, and lastname.

-- (c) Make sure you drop any view that might exist.

-- (d) Create a view based on your query.

-- (e) Write a report listing all customers served by employee 7, Robert King.

-- (f) Write a report listing all employees who served customer CHOPS, Chop-suey Chinese.

-- (g) Drop the view.
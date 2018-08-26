.echo on
.headers on

-- Name: Aaron Colclough
-- File: TSQL-Ex3.sql
-- Date: August 21, 2018

-- 1
select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as LineTotal, 
	round(((od.unitprice * od.quantity) / 
		(select sum(od.unitprice * od.quantity)
		from order_details od 
		group by od.orderid) * 100), 2) as Pct
from order_details od limit 25;

-- 2a
select distinct c.city, c.region, c.postalcode, e.city, e.region, e.postalcode
from customers c
	join employees e
		on c.city = e.city;
		
-- 2b
select distinct c.city, c.region, c.postalcode, e.city, e.region, e.postalcode
from customers c 
	left outer join employees e
		on c.city = e.city
order by e.city asc;

-- 2c
select distinct e.city, e.region, e.postalcode, c.city, c.region, c.postalcode
from employees e
	left outer join customers c
		on e.city = c.city
order by c.city asc;

-- 3
select p.productid, p.productname, round((p.unitprice / p.quantityperunit), 2) as ProductPrice
from products p 
order by ProductPrice desc limit 10;

-- 4
select e.employeeid, e.firstname || " " || e.lastname as ename, o.orderid, o.orderdate 
from employees e
	join orders o
		on e.employeeid = o.employeeid
where o.orderdate <= julianday('now')
group by e.employeeid;
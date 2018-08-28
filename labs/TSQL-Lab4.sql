-- Name: Aaron Colclough
-- File: TSQL-Lab04.sql
-- Date: August 27, 2018

-- 1
select o.orderid, o.orderdate, o.custid, o.empid
	from sales.orders o
	where o.orderdate = (select max(o.orderdate)
							from sales.orders o)
	order by o.orderid desc;

-- 2
select o.custid, o.orderid, o.orderdate, o.empid
	from sales.Orders o
	where o.custid = (select top 1 o.custid
						from sales.orders o
						group by o.custid
						order by count(o.orderid) desc);
						
-- 3
select e.empid, e.firstname, e.lastname
	from hr.Employees e
	where e.empid 
	not in  
		(select distinct o.empid
			from sales.orders o
			where o.orderdate >= '2016-05-01');
		
-- 4
select distinct c.country
	from sales.customers c
	where c.country
	not in
		(select distinct e.country
			from hr.Employees e);

-- 5
select o1.custid, o1.orderid, o1.orderdate, o1.empid
	from sales.orders o1
	where o1.orderdate 
	in	
		(select max(o2.orderdate)
			from sales.orders o2	
			where o1.custid = o2.custid)	
	order by o1.custid asc;

-- 6
select c.custid, c.companyname
	from sales.Customers c
	where exists 
		(select o.custid
			from sales.orders o
			where c.custid = o.custid and o.orderdate >= '2015-01-01' and o.orderdate <= '2015-12-31')
	and not exists
		(select o1.custid
			from sales.orders o1
			where c.custid = o1.custid and o1.orderdate >= '2016-01-01' and o1.orderdate <= '2016-12-31');
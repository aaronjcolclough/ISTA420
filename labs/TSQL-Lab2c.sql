-- Name: Aaron Colclough
-- File: TSQL-Lab2c.sql
-- Date: August 20, 2018

use TSQLV4;

-- 1
select orderid, orderdate, custid, empid 
	from sales.orders
	where orderdate like N'2015-06-%';

-- 2
select orderid, orderdate, custid, empid 
	from sales.orders
	where orderdate = eomonth(orderdate);

-- 3	
select empid, firstname, lastname 
	from hr.Employees
	where lastname like N'%e%e%';

-- 4
select orderid, sum(qty * unitprice) as totalvalue
	from sales.orderdetails
	group by orderid
	having sum(qty * unitprice) > 10000
	order by totalvalue desc;

-- 5
select empid, lastname
	from hr.Employees
	where lastname 
	collate latin1_general_cs_as like N'[abcdefghijklmnopqrstuvwxyz]%';

-- 6


-- 7
select top 3 shipcountry, (sum(freight) / count(freight)) as avefreight
	from sales.orders
	where orderdate like N'2015-%-%'
	group by shipcountry
	order by avefreight desc;

-- 8
-- skipped

-- 9
select empid, firstname, lastname, titleofcourtesy, 
	case titleofcourtesy
		when 'Ms.' then 'Female'
		when 'Mrs.' then 'Female'
		when 'Mr.' Then ' Male'
		else 'IT'
	end as gender
from hr.Employees;

-- 10
-- skipped
--Name: Aaron Colclough
--File: TSQL-Lab6.sql
--Date: Sept 4, 2018

use TSQLV4;

--3
select custid, empid
from Sales.Orders
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'

Except

select custid, empid
from Sales.Orders
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01';

--4
select custid, empid
from Sales.Orders
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'

Intersect

select custid, empid
from Sales.Orders
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01';

--5
(select custid, empid
from Sales.Orders
	where orderdate >= '2016-01-01' and orderdate < '2016-02-01'

Intersect

select custid, empid
from Sales.Orders
	where orderdate >= '2016-02-01' and orderdate < '2016-03-01')

Except

select custid, empid
from Sales.Orders
	where orderdate >= '2015-01-01' and orderdate < '2016-01-01';
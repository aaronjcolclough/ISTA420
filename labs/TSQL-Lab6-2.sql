.echo on
.headers on

--Name: Aaron Colclough
--File: TSQL-Lab6-2.sql
--Date: Sept 4, 2018

--1
select c.country
from customers c 

union

select s.country
from suppliers s;

--2
select c.city, c.country
from customers c 

union

select s.city, s.country
from suppliers s
order by country;

--3
select c.country
from customers c 

intersect

select s.country
from suppliers s;

--4
select c.city, c.country
from customers c 

intersect

select s.city, s.country
from suppliers s;

--5
select c.country
from customers c 

except

select s.country
from suppliers s;

--6
select s.country
from suppliers s

except

select c.country
from customers c; 
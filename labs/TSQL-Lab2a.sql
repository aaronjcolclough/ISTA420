.echo on
.headers on

-- Name: Aaron Colclough
-- File: TSQL-Lab2a
-- Date: August 14, 2018

-- What are the regions?
select * from region;

-- What are the cities?
select distinct territorydescription from territories;

-- What are the cities in the southern region?
select distinct territorydescription from territories where regionid = 4;

-- How do you run this query with the fully qualified column name?
select distinct territories.territorydescription from territories where regionid = 4;

-- How do you run this query with a table alias?
select distinct t.territorydescription from territories t where regionid = 4;

-- What is the contact name, phone number, and city for each customer?
select contactname, city, phone from customers;

-- What are the products currently out of stock?
select productid, productname, unitsinstock from products where unitsinstock = 0;

-- What are the ten products currently in stock with the least amount on hand?
select unitsinstock, productid, productname from products where unitsinstock > 0 order by unitsinstock limit 10;

-- What are the five most expensive products in stock?
select unitprice, productid, productname, unitsinstock from products where unitsinstock > 0 order by unitprice desc limit 5;

-- How many products does Northwind have? How many customers? How many suppliers?
select count(*) from products;
select count(*) from customers;
select count(*) from suppliers;
.echo on
.headers on

-- Name: Aaron Colclough
-- File: TSQL-Lab2b
-- Date: August 15, 2018

-- Who are our customers in North America?
select customerid, companyname, country from customers where country in ("USA", "Mexico", "Canada");

-- What orders were placed in April, 1998?
select orderid, orderdate from orders where orderdate like '1998-04-%';

-- What sauces do we sell?
select productid, productname from products where productname like '%sauce%';

-- You sell some kind of dried fruit that I liked very much. What is its name?
select productid, productname from products where productname like '%dried%';

-- What employees ship products to Germany in December?
select employeeid, orderdate, shipcountry from orders where orderdate like '%-12-%' and shipcountry = 'Germany';

-- We have an issue with product 19. I need to know the total amount and the net amount of all orders for product 19 where the customer took a discount.
select orderid, productid, unitprice, quantity, (unitprice * quantity) as totalamount, discount from order_details where productid = 19 and discount > 0;

-- I need a list of employees by title, first name, and last name, with the employee's position under their names, and a line separating each employee.
select titleofcourtesy || " " || firstname || " " || lastname || "
	" || title || "
	" from employees;

-- I need a list of our customers and the first name only of the customer representative.
select companyname, substr(contactname, 1, instr(contactname, " ") - 1) as firstname from customers;

-- Give me a list of our customer contacts alphabetically by last name.
select substr(contactname, instr(contactname, " ") + 1) || ", " || substr(contactname, 1, instr(contactname, " ")) as last from customers order by last collate nocase asc;

-- I need a report telling me the most common pairing of customers and employees with the greatest order volume (by the number of orders placed). Exclude pairings with minimal orders.
select customerid, employeeid, count(orderid) from orders group by customerid, employeeid having count(orderid) > 4 order by count(orderid) desc;

-- I need a report listing the highest average selling product by product id. The average is determined by the total sales of each product id divided by the quantity of the product sold. Include only the highest 20 products.
select productid, (count(productid) / quantity) as average from order_details group by productid order by average desc limit 20;
.echo on
.headers on

-- Name: Aaron Colclough
-- File: TSQL-Ex02.sql
-- Date: August 15, 2018

-- Mailing Labels
select contacttitle || " " || contactname || "
" || companyname || "
" || address || "
" || city || ", " || region || " " || postalcode || " " || country || "
" || "
" from customers;
	
-- Telephone Book
select substr(substr(contactname, instr(contactname, " ") +1 ), instr(substr(contactname, instr(contactname, " ") +1 ), " ") + 1)
 || ", " || rtrim(contactname, substr(substr(contactname, instr(contactname, " ") +1 ), instr(substr(contactname, instr(contactname, " ") +1 ), " ") + 1))
 || "       " || companyname || "   " || phone as phonenumbers from customers order by phonenumbers collate nocase asc;
 
 -- Shipping Lag
 select orderid, orderdate, shippeddate, julianday(shippeddate) - julianday(orderdate) as dwelltime from orders;
 
 -- Your Age
 select julianday('now') - julianday('1985-09-12');
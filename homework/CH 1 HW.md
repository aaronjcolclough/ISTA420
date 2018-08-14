.headers on

-- Name: Aaron Colclough

-- File: books.sql

-- Date: August 7, 2018

drop table if exists books;

create table books(

  id integer,
  
  title text,
  
  author text,
  pages integer,
  published integer,
  condition text
);
insert into books values (1,"Fundamentals of Azure",'Collier',263,2016,"Digital");
insert into books values (2,"Pro ASP.NET MVC 5",'Freeman',832,2013,"Digital");
insert into books values (3,"T-SQL Fundamentals",'Ben-Gan',430,2016,"New");
insert into books values (4,"Microsoft Visual C# Step by Step",'Sharp',791,2018,"New");

select* from books;
id|title|author|pages|published|condition
1|Fundamentals of Azure|Collier|263|2016|Digital
2|Pro ASP.NET MVC 5|Freeman|832|2013|Digital
3|T-SQL Fundamentals|Ben-Gan|430|2016|New
4|Microsoft Visual C# Step by Step|Sharp|791|2018|New
select title from books where condition like "Digital";
title
Fundamentals of Azure
Pro ASP.NET MVC 5

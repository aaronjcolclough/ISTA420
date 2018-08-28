# T-SQL CH 5 HW

1. What is a table expression? Can you give a technical deﬁnition of a table expression?

A named query expression that represents a valid relational table.

2. In what SQL clause are derived tables (table valued subqueries) located?

In the from clause of the outer query.

3. Why can you refer to column aliases in an outer query that you deﬁned in an inner table valued subquery?

Because the inner table valued subquery is run first.

4. What SQL key word deﬁnes a common table expression?

WITH

5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?

Yes, because the preceding expression was run first.

6. Can a main query refer to a previously deﬁned common table expression by multiple aliases?

Yes, because CTEs are run and stored in memory.

7. In SQL, is a view a durable object?

Yes, because it stores the query in memory.

8. In a view, what does WITH CHECK OPTION do? Why is this important?

It prevents modifications that conflict with the views filter.

9. In a view, what does SCHEMABINDING do? Why is this important?

It binds the schema of referenced objects and columns to the schema of the referencing object. Without it, changes can be made that lead to run time errors.

10. What is a table valued function?

A view with parameters, basically.

11. What does the APPLY operator do?

Runs the subquery for every row of the outer query.

12. What are the two forms of the APPLY operator? Give an example of each.

CROSS APPLY and OUTER APPLY.

    SELECT S.shipperid, E.empid
    FROM Sales.Shippers AS S   
      CROSS APPLY HR.Employees AS E;

    SELECT C.custid, A.orderid, A.orderdate
    FROM Sales.Customers AS C
      OUTER APPLY    
      (SELECT TOP (3) orderid, empid, orderdate, requireddate
      FROM Sales.Orders AS O
        WHERE O.custid = C.custid      
        ORDER BY orderdate DESC, orderid DESC) AS A;

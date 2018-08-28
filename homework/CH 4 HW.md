# T-SQL CH 4 HW

1. **In your own words, what is a** ***subquery*****?** A query within a query.
2. **In your own words, what is a** ***self contained subquery*****?** A subquery that can be run by itself and doesnt rely on data from another table or query.
3. **In your own words, what is a** ***correlated subquery*****?** Is the opposite of a self-contained subquery.
4. **Give an example of a subquery that returns a single value. When would you use this kind of subquery?** SELECT orderid, orderdate, empid, custid FROM Sales.Orders WHERE orderid = (SELECT MAX(O.orderid)                  FROM Sales.Orders AS O);. When the Outer query needs a single valued expression (where or select).
5. **Give an example of a subquery that returns multiple values. When would you use this kind of subquery?** SELECT orderid FROM Sales.Orders WHERE empid IN   (SELECT E.empid    FROM HR.Employees AS E    WHERE E.lastname LIKE N'D%'). When you need a specific return of values for the outer query.
6. **Give an example of a subquery that returns table values. When would you use this kind of subquery?** SELECT custid, orderid, orderdate, empid FROM Sales.Orders AS O1 WHERE orderid =   (SELECT MAX(O2.orderid)    FROM Sales.Orders AS O2    WHERE O2.custid = O1.custid); 
7. **What does the** ***exists*** **predicate do? Give an example.** Accepts a subquery as input and returns TRUE  if the subquery returns any rows.
8. **What happens if we use the** ***not*** **operator before a predicate? Give an example.** It negates the predicate. True becomes False, False becomes True.
9. **When you use** ***exists*** **or** ***not exists*** **with respect to a row in a database, does it return two or three values? Explain your answer.** Two valued logic. True or False.
10. **How would you use a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.** By creating a correlated subquery within the query that filters the rows and sums the quantities.
1. **When using INSERT, is the list of columns necessary? Why or why not?**

The column names are optional, but by listing them you control the value-column associations.

2. **When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?**

Yes. When using a system function.

3. **What is the operand for the INSERT EXEC statement?**

A stored procedure or a dynamic SQL batch.

4. **How would you use the INSERT INTO statement?**

SELECT INTO

5. **What are the parameters to the BULK INSERT statement?**

DATAFILETYPE, FIELDTERMINATOR, ROWTERMINATOR

6. **Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?**

No. By defining a primary key or a unique constraint.

7. **How do you create a SEQUENCE object?**

CREATE SEQUENCE

8. **How do you use a SEQUENCE object?**

By calling its name.

9. **How do you alter a SEQUENCE object?**

ALTER SEQUENCE

10. **What is the diﬀerence between DELETE and TRUNCATE?**

TRUNCATE has no filter.

11. **What is the diﬀerence between DELETE and DROP TABLE?**

DELETE will delete data and DROP TABLE deletes the table.

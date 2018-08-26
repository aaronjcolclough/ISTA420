# T-SQL CH 3 HW

1. **In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.** 
If you have a number of tables then you are going to need to join them in order to get the correct results.

2. **Describe in your own words the output from an** ***inner join.***
Selecting all records where the conditions match. Discards the non-matching rows.

3. **Describe in your own words the output from an** ***outer join.***
Selecting all records of one table and the records from a second table where the conditions match.

4. **Describe in your own words the output from a** ***cross join.*** Every possible outcome. Rows x Rows.

5. **A convenient mnemonic for remembering the various joins is "Ohio." Why is this true?** one inner, three outer (hi), one cross


6. **Give an example of a** ***composite join.*** Multiple join conditions.


7. **What is the difference between the following two queries? The business problem is "How many orders do we have from each customer?"**
The first query gives a count of every row and the second query gives a count of every orderid.

8. **What might be one of the reasons the following query does not return the column** ***custID*** **in this query?** Might not be an order date.

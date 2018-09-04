1. **What does a set operator do?**

Compares complete rows between the results of two input queries.

2. **What are the general requirements of a set operator?**

Cannot have *ORDER BY*. The two queries must result in the same number of columns with compatible data. Columns names (and aliases) are determined by the first query.

3. **What is a Venn Diagram? This is not in the book.**

A diagram that shows possible logical relations between a finite collection of sets.

4. **Draw a Venn Diagram of the UNION operator. What does it do?**

Returns combination of the two sets.

5. **Draw a Venn Diagram of the UNION ALL operator. What does it do?**

Same as the *UNION* minus the duplicates.

6. **Draw a Venn Diagram of the INTERSECT operator. What does it do?**

Returns only the rows that are common to the results of the two queries.

7. **If SQL Server supported the INTERSECT ALL operator, what would it do?**

Returns the number of duplicate rows matching the lower of the counts in both input multisets.

8. **Draw a Venn Diagram of the EXCEPT operator. What does it do?**

Returns the rows that exist only in the first set.

9. **If SQL Server supported the EXCEPT ALL operator, what would it do?**

Only occurrences that don't have matches are returned.

10. **What is the precedence of the set operators?**

*INTERSECT*, *UNION* AND *EXCEPT* (appearance).

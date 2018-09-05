1. **What is a window function?**

A function that, for each row, computes a scalar result value based on a calculation against a subset of rows from the underlying query.

2. **What does PARTITION do?**

Restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row.

3. **What does ORDER BY do?**

Defines ordering; not presentation. Gives meaning to the rank.

4. **What does ROWS BETWEEN do?**

Filters the frame, or subset, of rows from the window partition between the two specified delimiters.

5. **What is a ranking window function? Why would you use it? Give an example.**

Ranks each row with respect to others in the window.

6. **What is an oﬀset window function? Why would you use it? Give an example.**

Returns an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame.

7. **What do LEAD and LAG DO?**

LAG looks before the current row and LEAD looks ahead.

8. **What do FIRST VALUE and LAST VALUE do?**

Return elements from the first and last rows in the window frame.

9. **What is an aggregate window function? Why would you use it? Give an example.**

Aggregate the rows in the defined window.

10. **What is a pivot table and what does it do?**

Rotates data from a state of rows to a state of columns.

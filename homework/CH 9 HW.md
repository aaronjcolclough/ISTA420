1. **What is a temporal table?**

A 2 column table that represents the validity period of a row, plus a linked history table with a mirrored schema holding older states of modified rows.

2. **Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.**

When you need to keep a record of past data/changes.

3. **What are the semantics of a temporal table? There are seven of them.**

A primary key, two non-nullable columns defined as DATETIME2, start column, end column, a designation of the period columns, SYSTEM_VERSIONING, a linked history table

5. **How do you modify a history table?**

INSERT, UPDATE, DELETE, MERGE

6. **How do you delete date from a history table? Why would you want to delete data from a history table?**

DELETE

7. **How do you search a history table?**

FOR SYSTEM_TIME clause

8. **How do you query all data from both a history ﬁle and the current data?**

By using the ALL sub-clause.

9. **How do you drop a temporal table?**

Drop if exists.

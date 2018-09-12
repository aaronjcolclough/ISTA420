1. **The sales tax rate for a state just changed. How would you update the state sales tax table to reﬂect the changes? Assume that this table has an ID column, a RATE column, and a STATE column.**

UPDATE dbo.taxes
  SET RATE = (ratechange)
WHERE ID/STATE = ID/'State';

2. **The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?**

Create a new table with SELECT INTO with the data from the old table and update the new table with the new sales tax.

3. **Explain how the proprietary assignment update command works.**

Updates and assigns at the same time.

4. **What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?**

ETL (Extract, transform, load). data transformation

5. **What are the semantics of MERGE?**

MERGE INTO ____ AS TGT, USING ____ AS SRC, ON, WHEN MATCHED THEN, UPDATE SET, WHEN NOT MATCHED THEN, INSERT VALUES

6. **Write a typical INSERT OUTPUT statement.**

INSERT INTO ____
  OUTPUT ____
    SELECT
    FROM
    WHERE

7. **Write a typical UPDATE OUTPUT statement.**

UPDATE
  SET
OUTPUT
WHERE

8. **Write a typical DELETE OUTPUT statement.**

DELETE FROM
  OUTPUT
WHERE

9. **Write a typical MERGE OUTPUT statement.**

MERGE INTO
USING
  ON TGT.____ = SRC.____
WHEN MATCHED THEN
  UPDATE SET ____
WHEN NOT MATCHED
  INSERT
  VALUES
OUTPUT 

10. **What is nested DML?**

Directly inserts the subset of rows needed from the modified rows into the final target table.

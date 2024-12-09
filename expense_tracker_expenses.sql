-- Week 4: Expense Tracker Management with Data Manipulation Language (DML) Assignment

-- Question 1.1: Adding multiple expenses

INSERT INTO Expenses (expense_id, amount, date, category)
VALUES
    (1, 50.00, '2023-06-15', 'Grocery'),
    (2, 200.00, '2023-06-16', 'Office Supplies'),
    (3, 120.00, '2023-06-17', 'Travel'),
    (4, 80.00, '2023-06-18', 'Grocery'),
    (5, 150.00, '2023-06-19', 'Office Supplies');

/* This query inserts 5 different expense records into the "Expenses" table, 
including the expense_id, amount, date, and category. */

-- Question 1.2: Updating Expense Information

UPDATE Expenses
SET amount = 75.00, category = 'Travel'
WHERE expense_id = 3;

/* This query updates the expense record with expense_id = 3, changing the amount to 75.00 and the category to Travel. 
The WHERE clause ensures that only the record with expense_id = 3 is updated. */


-- Question 1.3: Selective Data Deletion
/* Delete expense entries where the amount is zero.*/

DELETE FROM Expenses
WHERE amount = 0;

-------This query deletes all records in the "Expenses" table where the amount is equal to 0.

/* Delete expense entries from a specific date range */

DELETE FROM Expenses
WHERE date < '2023-07-01';

----- This query deletes all expense records with a date earlier than July 1, 2023.

-- Bonus Challenge: Handling NULL Values
/*
If there are any NULL values in the "Expenses" table, you can handle them using the UPDATE statement 
to set a default value or replace the NULL with a specific value.*/
-- Check for NULL values:
SELECT * FROM Expenses
WHERE amount IS NULL;

-- UPDATE Expenses
SET amount = 0
WHERE amount IS NULL;


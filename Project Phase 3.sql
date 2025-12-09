-- Phase 3
-- View all books
SELECT * FROM books;
-- Show all registered members
SELECT * FROM members;
-- Or
SELECT member_id, first_name, last_name 
FROM members;
-- Find all loans made on a specific date
SELECT * FROM loans
WHERE loan_date = '2024-12-05';
-- Display all books with more than 3 available copies
SELECT * FROM books
WHERE available_copies >= '3';

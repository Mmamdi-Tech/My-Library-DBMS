-- Phase 5
USE library_db;
-- Sort all books alphabetically by title
SELECT * FROM books
ORDER BY title ASC;
-- List distinct book genres
SELECT DISTINCT genre
FROM books
GROUP BY genre
ORDER BY genre ASC;
-- Get top 5 most recent members
SELECT * FROM members;
ORDER BY join_date DESC
LIMIT 5;
-- Skip the first 5 books and display the next 5
SELECT * FROM books
ORDER BY title ASC
LIMIT 5 OFFSET 5;
-- Show the 10 most recent loans not yet returned
SELECT * FROM loans
WHERE return_date IS NULL
ORDER BY loan_date DESC
LIMIT 10;

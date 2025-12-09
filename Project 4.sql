-- Phase 4
-- Books published after 2015:
SELECT * FROM books
WHERE published_year >'2015';
-- Members who joined before 2022
SELECT * FROM members
WHERE join_date <= '2022-01-01';
-- Books that are either Fiction or Mystery
-- Using the comparison operator (=) & logical operator (OR)
SELECT * FROM books
WHERE genre = 'Fiction' OR genre = 'Mystery';
-- or the operator (IN)
SELECT * FROM books
WHERE genre IN ('Fiction', 'Mystery');
-- Loans that have not been returned
SELECT * FROM loans
WHERE return_date IS NULL;
-- or
SELECT * FROM loans
WHERE return_date IS NULL OR return_date > CURRENT_DATE;
-- Members who joined after 2020 and have borrowed books (bonus)
SELECT * FROM members;
SELECT DISTINCT m.*
FROM Members m
JOIN Loans l ON m.member_id = l.member_id
WHERE m.join_date > '2020-12-31';   -- i.e. joined in 2021 or later;
USE library_db;
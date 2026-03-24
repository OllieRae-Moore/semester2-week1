-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth
.mode columns
.headers on
SELECT StudentId, FirstName, LastName, DateOfBirth
From student
ORDER BY DateofBirth DESC
LIMIT 5;

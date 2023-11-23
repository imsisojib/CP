SELECT id, email, COUNT(*)
FROM Person
GROUP BY email
HAVING COUNT(*) > 1

--will return all duplicates value in a single column by group
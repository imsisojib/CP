--MYSQL

--first query by cutomerId from Customers and Orders table then find out from the list if id from customers table listed it that list or not, if not then that will be the customer who never ordered.
SELECT name as Customers
FROM Customers C
WHERE C.Id NOT IN (SELECT O.CustomerId from Orders O)


--left join
--joining a two table first then look for null valued customer id that will be the customer who never ordered.
--time consuming for large database
SELECT c.name AS customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;
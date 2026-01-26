SELECT name AS Customers
FROM Customers c
WHERE NOT EXISTS (
    SELECT * FROM Orders o
    WHERE o.customerId = c.id
);

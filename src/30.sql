SELECT CustomerName 
FROM Customers 
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Orders);

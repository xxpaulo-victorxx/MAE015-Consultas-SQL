-- Top-10 nacionalidades que mais compraram
SELECT Customers.Country, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.Country
ORDER BY TotalQuantity DESC
LIMIT 10;

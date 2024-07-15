SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'Brazil'
GROUP BY Products.ProductName
ORDER BY TotalQuantity DESC;

SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductName
ORDER BY TotalQuantity DESC
LIMIT 10;
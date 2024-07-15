-- Cidade com o maior número de vendas em quantidade
SELECT City, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY City
ORDER BY TotalQuantity DESC
LIMIT 1;

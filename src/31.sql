-- Por quantidade de pedidos
SELECT Customers.CustomerName, COUNT(Orders.OrderID) AS OrdersCount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY OrdersCount DESC
LIMIT 10;

-- Por quantidade de produtos comprados
SELECT Customers.CustomerName, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Customers.CustomerName
ORDER BY TotalQuantity DESC
LIMIT 10;

SELECT Suppliers.Country, Products.ProductName, 
       (SUM(OrderDetails.Quantity) / 
       (SELECT SUM(OrderDetails.Quantity)
        FROM OrderDetails
        JOIN Products ON OrderDetails.ProductID = Products.ProductID
        JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
        WHERE Suppliers.Country = Suppliers.Country)) * 100 AS Percentage
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Suppliers.Country, Products.ProductName
ORDER BY Suppliers.Country, Percentage DESC;

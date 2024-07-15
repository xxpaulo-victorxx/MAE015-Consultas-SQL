SELECT Customers.CustomerName, Suppliers.SupplierName, Customers.Country
FROM Customers
JOIN Suppliers ON Customers.Country = Suppliers.Country;

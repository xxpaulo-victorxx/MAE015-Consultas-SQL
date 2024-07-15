SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers
WHERE Country IN ('Brazil', 'Argentina');

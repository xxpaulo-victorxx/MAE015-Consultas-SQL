SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers
WHERE Country NOT IN ('Brazil', 'Germany', 'France', 'USA');

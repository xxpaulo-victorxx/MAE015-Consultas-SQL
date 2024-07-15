SELECT City, GROUP_CONCAT(CustomerName) AS Customers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 1;

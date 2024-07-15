-- Frentista que entrega em todos os países
SELECT Employees.FirstName, Employees.LastName
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Employees.FirstName, Employees.LastName
HAVING COUNT(DISTINCT Customers.Country) = (SELECT COUNT(DISTINCT Country) FROM Customers);

-- Frentista que entrega em mais países
SELECT Employees.FirstName, Employees.LastName, COUNT(DISTINCT Customers.Country) AS CountryCount
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Employees.FirstName, Employees.LastName
ORDER BY CountryCount DESC
LIMIT 1;
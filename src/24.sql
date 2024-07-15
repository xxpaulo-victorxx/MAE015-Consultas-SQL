SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (
    SELECT DISTINCT EmployeeID
    FROM Orders
);

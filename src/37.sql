SELECT COUNT(*)
FROM Orders
WHERE OrderDate > (
    SELECT MAX(OrderDate)
    FROM Orders
    JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
    WHERE Employees.FirstName = 'Anne' AND Employees.LastName = 'Dodsworth'
);

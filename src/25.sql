SELECT Employees.FirstName, Employees.LastName, COUNT(Orders.OrderID) AS OrdersCount
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.FirstName, Employees.LastName
HAVING OrdersCount < 50;

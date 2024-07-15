SELECT DISTINCT e2.FirstName, e2.LastName
FROM Orders o1
JOIN Employees e1 ON o1.EmployeeID = e1.EmployeeID
JOIN Orders o2 ON o1.CustomerID = o2.CustomerID
JOIN Employees e2 ON o2.EmployeeID = e2.EmployeeID
WHERE e1.FirstName = 'Margaret' AND e1.LastName = 'Peacock' AND e2.EmployeeID != e1.EmployeeID;

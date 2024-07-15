-- Por quantidade de pedidos
SELECT Employees.FirstName, Employees.LastName, COUNT(Orders.OrderID) AS OrdersCount
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.FirstName, Employees.LastName
ORDER BY OrdersCount DESC
LIMIT 10;

-- Por quantidade de produtos vendidos
SELECT Employees.FirstName, Employees.LastName, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Employees.FirstName, Employees.LastName
ORDER BY TotalQuantity DESC
LIMIT 10;

-- Por valor total das vendas
SELECT Employees.FirstName, Employees.LastName, SUM(OrderDetails.Quantity * OrderDetails.Price) AS TotalValue
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Employees.FirstName, Employees.LastName
ORDER BY TotalValue DESC
LIMIT 10;

-- Idade que mais vendeu
SELECT 
    YEAR(CURRENT_DATE) - YEAR(Employees.BirthDate) - 
    (CASE WHEN MONTH(Employees.BirthDate) * 100 + DAY(Employees.BirthDate) > MONTH(CURRENT_DATE) * 100 + DAY(CURRENT_DATE) THEN 1 ELSE 0 END) AS Age, 
    SUM(OrderDetails.Quantity * OrderDetails.Price) AS TotalValue
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Age
ORDER BY TotalValue DESC
LIMIT 1;

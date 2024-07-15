SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate > (SELECT BirthDate FROM Employees WHERE FirstName = 'Margaret' AND LastName = 'Peacock');

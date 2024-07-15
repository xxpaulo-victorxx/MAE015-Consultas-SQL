-- Clientes que compraram mais de 10 produtos diferentes
SELECT CustomerID
FROM OrderDetails
GROUP BY CustomerID
HAVING COUNT(DISTINCT ProductID) > 10;

-- Clientes que compraram mais de 100 produtos (repetidos ou não)
SELECT CustomerID
FROM OrderDetails
GROUP BY CustomerID
HAVING SUM(Quantity) > 100;

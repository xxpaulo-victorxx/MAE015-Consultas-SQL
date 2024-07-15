SELECT 
    MAX(Price) AS MaxPrice, 
    MIN(Price) AS MinPrice, 
    AVG(Price) AS AvgPrice, 
    MAX(Price) - MIN(Price) AS PriceRange
FROM Products;

SELECT 
    Categories.CategoryName, 
    MAX(Products.Price) AS MaxPrice, 
    MIN(Products.Price) AS MinPrice
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryName;

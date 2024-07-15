SELECT 
    ProductName, 
    UnitsInStock, 
    CASE
        WHEN Price <= 10.00 THEN 'Preço baixo'
        WHEN Price BETWEEN 10.01 AND 49.99 THEN 'Preço médio'
        WHEN Price BETWEEN 50.00 AND 99.99 THEN 'Preço alto'
        ELSE 'Preço Elevado'
    END AS PriceRange
FROM Products;

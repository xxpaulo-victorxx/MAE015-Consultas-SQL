-- Ranking de Cidades por quantidade de clientes
SELECT City, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY City
ORDER BY NumberOfCustomers DESC;

-- Ranking de Países por quantidade de clientes
SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customers
GROUP BY Country
ORDER BY NumberOfCustomers DESC;
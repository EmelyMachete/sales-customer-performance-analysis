/*
Sales & Customer Performance Analysis
Sales Performance Overview

This script analyzes overall sales performance across time and regions.
*/

SELECT
    FORMAT(s.SaleDate, 'yyyy-MM') AS SalesMonth,
    SUM(s.Quantity * p.UnitPrice) AS TotalRevenue
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY FORMAT(s.SaleDate, 'yyyy-MM')
ORDER BY SalesMonth;

SELECT
    r.RegionName,
    SUM(s.Quantity * p.UnitPrice) AS TotalRevenue
FROM Sales s
JOIN Customers c
    ON s.CustomerID = c.CustomerID
JOIN Regions r
    ON c.RegionID = r.RegionID
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY r.RegionName
ORDER BY TotalRevenue DESC;


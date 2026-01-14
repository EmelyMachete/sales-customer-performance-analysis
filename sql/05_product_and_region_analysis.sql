/*
Sales & Customer Performance Analysis
Product and Regional Performance

This script analyzes product sales performance and regional demand patterns.
*/

SELECT
    p.ProductName,
    p.Category,
    SUM(s.Quantity) AS TotalUnitsSold,
    SUM(s.Quantity * p.UnitPrice) AS TotalRevenue
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    p.ProductName,
    p.Category
ORDER BY TotalRevenue DESC;

SELECT
    r.RegionName,
    p.ProductName,
    SUM(s.Quantity) AS UnitsSold
FROM Sales s
JOIN Customers c
    ON s.CustomerID = c.CustomerID
JOIN Regions r
    ON c.RegionID = r.RegionID
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    r.RegionName,
    p.ProductName
ORDER BY
    r.RegionName,
    UnitsSold DESC;


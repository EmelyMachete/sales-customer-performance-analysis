/*
Sales & Customer Performance Analysis
Customer Analysis

This script analyzes customer purchasing behavior, repeat purchases,
and customer value.
*/

SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(s.SaleID) AS TotalPurchases
FROM Customers c
JOIN Sales s
    ON c.CustomerID = s.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY TotalPurchases DESC;

SELECT
    c.CustomerID,
    c.CustomerName,
    SUM(s.Quantity * p.UnitPrice) AS CustomerRevenue
FROM Customers c
JOIN Sales s
    ON c.CustomerID = s.CustomerID
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY CustomerRevenue DESC;


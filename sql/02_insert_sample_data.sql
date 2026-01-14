/*
Sales & Customer Performance Analysis
Sample Data Insertion

Synthetic data designed to reflect realistic customer, product,
and regional sales patterns in a South African business context.
*/
INSERT INTO Regions (RegionID, RegionName) VALUES
(1, 'Gauteng'),
(2, 'Western Cape'),
(3, 'KwaZulu-Natal');

INSERT INTO Customers (
    CustomerID, CustomerName, Gender, RegionID
) VALUES
(201, 'Lerato Khumalo', 'Female', 1),
(202, 'Sipho Dlamini', 'Male', 1),
(203, 'Ayanda Pillay', 'Female', 2),
(204, 'Thabo Nkosi', 'Male', 3),
(205, 'Naledi Mokoena', 'Female', 2);

INSERT INTO Products (
    ProductID, ProductName, Category, UnitPrice
) VALUES
(301, 'Laptop', 'Electronics', 12000),
(302, 'Smartphone', 'Electronics', 8000),
(303, 'Office Chair', 'Furniture', 2500),
(304, 'Desk', 'Furniture', 4000);

INSERT INTO Sales (
    SaleID, CustomerID, ProductID, Quantity, SaleDate
) VALUES
(1, 201, 301, 1, '2023-01-15'),
(2, 202, 302, 2, '2023-01-20'),
(3, 203, 303, 1, '2023-02-05'),
(4, 204, 304, 1, '2023-02-18'),
(5, 205, 301, 1, '2023-03-10'),
(6, 201, 302, 1, '2023-03-22'),
(7, 202, 301, 1, '2023-04-05'),
(8, 203, 304, 1, '2023-04-15'),
(9, 204, 303, 2, '2023-05-01'),
(10, 205, 302, 1, '2023-05-12');


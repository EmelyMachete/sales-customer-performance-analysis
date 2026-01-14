/*
Sales & Customer Performance Analysis
Database Schema Creation

This script creates the core tables used for sales, customer,
product, and regional performance analysis.
*/

CREATE DATABASE SalesPerformance;
GO

USE SalesPerformance;
GO
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(50) NOT NULL
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    RegionID INT NOT NULL,
    CONSTRAINT FK_Customers_Regions
        FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL
);
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    SaleDate DATE NOT NULL,
    CONSTRAINT FK_Sales_Customers
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    CONSTRAINT FK_Sales_Products
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


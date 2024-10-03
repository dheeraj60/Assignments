-- This is Task 1


CREATE DATABASE TechShop;

USE TechShop;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Inventory (
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    QuantityInStock INT,
    LastStockUpdate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '9876543210', '123 Main St, City A'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '8765432109', '456 Oak Ave, City B'),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', '7654321098', '789 Pine St, City C'),
(4, 'Sara', 'Williams', 'sara.williams@example.com', '6543210987', '321 Maple Ave, City D'),
(5, 'David', 'Brown', 'david.brown@example.com', '5432109876', '654 Elm St, City E'),
(6, 'Emma', 'Jones', 'emma.jones@example.com', '4321098765', '987 Cedar Blvd, City F'),
(7, 'Liam', 'Garcia', 'liam.garcia@example.com', '3210987654', '159 Spruce St, City G'),
(8, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '2109876543', '753 Birch Rd, City H'),
(9, 'Noah', 'Lee', 'noah.lee@example.com', '1098765432', '951 Oak Dr, City I'),
(10, 'Ava', 'Kim', 'ava.kim@example.com', '0987654321', '357 Willow Ln, City J');

INSERT INTO Products (ProductID, ProductName, Description, Price)
VALUES
(1, 'Smartphone', 'High-end smartphone with 128GB storage', 599.99),
(2, 'Laptop', 'Gaming laptop with 16GB RAM and 512GB SSD', 999.99),
(3, 'Tablet', '10-inch tablet with 64GB storage', 299.99),
(4, 'Smartwatch', 'Fitness-focused smartwatch with heart-rate monitor', 199.99),
(5, 'Headphones', 'Noise-cancelling over-ear headphones', 149.99),
(6, 'Monitor', '27-inch 4K monitor', 399.99),
(7, 'Keyboard', 'Mechanical keyboard with RGB lighting', 89.99),
(8, 'Mouse', 'Wireless ergonomic mouse', 49.99),
(9, 'Router', 'Dual-band Wi-Fi 6 router', 129.99),
(10, 'External Hard Drive', '1TB external hard drive', 79.99);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 1, '2024-09-01', 749.98),
(2, 2, '2024-09-02', 199.99),
(3, 3, '2024-09-03', 1099.98),
(4, 4, '2024-09-04', 149.99),
(5, 5, '2024-09-05', 599.99),
(6, 6, '2024-09-06', 299.99),
(7, 7, '2024-09-07', 479.98),
(8, 8, '2024-09-08', 199.99),
(9, 9, '2024-09-09', 529.98),
(10, 10, '2024-09-10', 999.99);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
(1, 1, 1, 1),
(2, 1, 5, 1),
(3, 2, 4, 1),
(4, 3, 2, 1),
(5, 3, 7, 2),
(6, 4, 5, 1),
(7, 5, 1, 1),
(8, 6, 3, 1),
(9, 7, 6, 1),
(10, 7, 8, 1),
(11, 8, 4, 1),
(12, 9, 9, 1),
(13, 9, 10, 1),
(14, 10, 2, 1);

INSERT INTO Inventory (InventoryID, ProductID, QuantityInStock, LastStockUpdate)
VALUES
(1, 1, 100, '2024-08-01'),
(2, 2, 50, '2024-08-01'),
(3, 3, 200, '2024-08-01'),
(4, 4, 150, '2024-08-01'),
(5, 5, 300, '2024-08-01'),
(6, 6, 75, '2024-08-01'),
(7, 7, 120, '2024-08-01'),
(8, 8, 180, '2024-08-01'),
(9, 9, 90, '2024-08-01'),
(10, 10, 110, '2024-08-01');

SELECT * FROM Customers;

SELECT * FROM Inventory;

SELECT * FROM OrderDetails;

SELECT * FROM Orders;

SELECT * FROM Products;
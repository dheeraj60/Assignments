USE TechShop;

-- This is Task 2

SELECT FirstName, LastName, Email FROM Customers;

SELECT OrderID, OrderDate
FROM Orders;

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES (11, 'Mark', 'Taylor', 'mark.taylor@example.com', '9988776655', '12 Palm Street, City K');

UPDATE Products
SET Price = Price * 1.10;

DELETE FROM OrderDetails
WHERE OrderID = 3;
DELETE FROM Orders
WHERE OrderID = 3;

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES (11, 2, '2024-09-11', 499.99);

UPDATE Customers
SET Email = 'new.email@example.com', Address = 'New Address 123, City Z'
WHERE CustomerID = 4;

DELETE FROM OrderDetails
WHERE OrderID IN (
    SELECT OrderID FROM Orders WHERE CustomerID = 5
);

DELETE FROM Orders
WHERE CustomerID = 5;

INSERT INTO Products (ProductID, ProductName, Description, Price)
VALUES (11, 'Wireless Charger', 'Fast wireless charger', 29.99);

UPDATE Orders
SET TotalAmount = 200
WHERE OrderID = 7;
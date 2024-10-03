USE TechShop;

-- This is task 4

SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Orders
);

SELECT COUNT(ProductID) AS TotalProductsAvailable
FROM Products;

SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders;

SELECT AVG(OrderDetails.Quantity) AS AvgQuantityOrdered
FROM OrderDetails
WHERE ProductID IN (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Laptop'  
);

SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders
WHERE CustomerID = 1;

SELECT CustomerID, FirstName, LastName, 
       (SELECT COUNT(OrderID) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers
ORDER BY OrderCount DESC;

SELECT TOP 1 OrderID, SUM(TotalAmount) AS TotalRevenue
FROM Orders
GROUP BY OrderID
ORDER BY TotalRevenue DESC;

SELECT TOP 1 CustomerID, FirstName, LastName, 
       (SELECT SUM(TotalAmount) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS TotalSpent
FROM Customers
ORDER BY TotalSpent DESC;  

SELECT AVG(TotalAmount) AS AverageOrderValue
FROM Orders;

SELECT CustomerID, FirstName, LastName, 
       (SELECT COUNT(OrderID) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers;





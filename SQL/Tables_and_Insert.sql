USE ElvisCafeDB;
GO

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(20)
);

INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES
('Elvis', 'Larson', 'elvis.larson@example.com', '070-1112223'),
('Maria', 'Svensson', 'maria.svensson@example.com', '070-4445566'),
('Johan', 'Nilsson', 'johan.nilsson@example.com', '070-9876543'),
('Emma', 'Bergman', 'emma.bergman@example.com', '070-5556677'),
('Lucas', 'Holm', 'lucas.holm@example.com', '070-1122334'),
('Sara', 'Ekström', 'sara.ekstrom@example.com', '070-2233445'),
('Anton', 'Vikström', 'anton.vikstrom@example.com', '070-3344556'),
('Hanna', 'Lindgren', 'hanna.lindgren@example.com', '070-4455667'),
('Oscar', 'Nyberg', 'oscar.nyberg@example.com', '070-5566778'),
('Maja', 'Sandberg', 'maja.sandberg@example.com', '070-6677889');

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products (ProductName, Category, Price) VALUES
('Cappuccino', 'Coffee', 39.00),
('Latte', 'Coffee', 42.00),
('Americano', 'Coffee', 35.00),
('Blueberry Muffin', 'Pastry', 28.00),
('Chocolate Ball', 'Pastry', 18.00),
('Chicken Sandwich', 'Food', 59.00),
('Caesar Salad', 'Food', 69.00),
('Green Tea', 'Tea', 29.00),
('Chai Latte', 'Tea', 36.00),
('Protein Shake Vanilla', 'Special', 55.00);

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    OrderDate DATETIME DEFAULT GETDATE()
);

INSERT INTO Orders (CustomerID, ProductID, Quantity) VALUES
(1, 2, 1),
(2, 4, 2),
(3, 1, 1),
(4, 7, 1),
(5, 9, 2),
(6, 3, 1),
(7, 10, 1),
(8, 6, 2),
(9, 5, 3),
(10, 8, 1);

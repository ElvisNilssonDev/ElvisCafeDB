SELECT *
FROM Customers
WHERE FirstName = 'Elvis';

--Just because I am awesome ill sort my own name

SELECT ProductName, Price
FROM Products
WHERE Price > 32;

-- Sorted by price over 32

SELECT *
FROM Orders
WHERE Quantity >= 2;

--Sorted by 2 products or more in order quantity

SELECT FirstName, LastName
FROM Customers
ORDER BY LastName ASC; -- <-- ASC means Acending so smallest letter to the biggest so A - Z.

-- Here we select from the names and order by Lastname alphabetically :D

SELECT ProductName, Price
FROM Products
ORDER BY Price DESC;

-- Order by the highest price for a product first! Magical if you ask me

SELECT FirstName, LastName, Email
FROM Customers
WHERE Email LIKE '%example.com';

--sorted by email which is like all of them but if I had more different ones like hotmail and gmail it could be useful
-- The "LIKE" is used mainly as a "Similary to statement"

SELECT ProductName, Category
FROM Products
WHERE ProductName LIKE '%Latte%';

--Here we sort by the word Latte and similary products will appear like Latte and Chai Latte! 

SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

-- this just uses Customers and counts all the total orders they have made

SELECT ProductID, SUM(Quantity) AS TotalQuantitySold
FROM Orders
GROUP BY ProductID
ORDER BY TotalQuantitySold DESC; -- <-- use to have the biggest number first as it just means Decending

-- This one is actually fun to use in my opinion because I like to see which one that sells the most so you can use this to see which one sells more
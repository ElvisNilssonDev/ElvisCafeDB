SELECT 
    Orders.OrderID,
    Customers.FirstName,
    Customers.LastName,
    Products.ProductName,
    Orders.Quantity
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Products ON Orders.ProductID = Products.ProductID;

-- Inner join to get all orders with customers name and productname (Shows only orders that have matching customers and matching products)

SELECT 
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.Quantity
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- show all customers even if they never ordered (Good for “Find customers who never ordered" incase thats useful)

SELECT 
    Products.ProductName,
    Orders.OrderID,
    Orders.Quantity
FROM Orders
RIGHT JOIN Products ON Orders.ProductID = Products.ProductID;

-- this does the opposite of the above one and shows all products even if noone ordered it, incase no one did buy it however, it just becomes null in the orders coloumns.

SELECT 
    Customers.FirstName,
    Products.ProductName,
    Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
FULL OUTER JOIN Products ON Orders.ProductID = Products.ProductID;

-- This Full outer JOIN show everything, even if no match exists LIKE customers that hasnt ordered anything yet, products that hasnt been sold or orders with missing customers in case a bug.

SELECT 
    Customers.FirstName,
    Customers.LastName,
    SUM(Products.Price * Orders.Quantity) AS TotalSpent
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON Orders.ProductID = Products.ProductID
GROUP BY Customers.FirstName, Customers.LastName;

--total amount each customer has spent, no more no less. Just join customers then Join products and calculate the total spent with "Products.Price * Orders.Quantity" and sum it "SUM(Products.Price * Orders.Quantity)" and then group by Customers.FirstName, Customers.LastName.



-- PRACTICE

-- Generate a report that lists the book titles from both locations and count the total number of books with the same title.

-- Generate a report that lists a patron's first name, email and loan count for loans that haven't been returned.




-- CHALLENGES:
-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Use a subquery along with IN to list all the Model Names with a Sticker Price greater than $30000
SELECT ModelName 
FROM Model 
WHERE ModelID 
    IN (SELECT ModelID 
        FROM Car 
        WHERE StickerPrice >30000);

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Use a subquery along with IN to list all sales of cars with Sticker Price greater than $30000. Include all columns.
SELECT *
FROM Sale
WHERE CarID IN (SELECT CarID FROM Car WHERE StickerPrice > 30000);

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate and a Customer table with columns, CustomerID, FirstName, LastName, Gender and SSN.
-- Use a subquery along with IN to list all sales to female customers. (Gender = 'F') Select all columns.
SELECT *
FROM Sale
WHERE CustomerID IN (SELECT CustomerID FROM Customer WHERE Gender = 'F');

-- 
SELECT *
FROM Sale AS s
INNER JOIN (SELECT CustomerID FROM Customer WHERE Gender = 'F') AS c
ON s.CustomerID = c.CustomerID;
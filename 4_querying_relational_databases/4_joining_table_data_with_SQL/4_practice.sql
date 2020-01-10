-- PRACTICE 

-- Use a JOIN to select all patrons with outstanding books. Select their first name and email address.
SELECT p.first_name, p.email
FROM loans AS l
INNER JOIN patrons AS p ON l.patron_id = p.id
WHERE returned_on IS NULL
GROUP BY l.patron_id;

-- Use a JOIN to find out which patrons haven't had any loans. Select their first name and email address.
SELECT p.first_name, p.email
FROM patrons AS p
LEFT OUTER JOIN loans AS l
ON p.id = l.patron_id
WHERE l.patron_id IS NULL;

-- Create a report that shows the title of the book, first and last name of the patron, email and all date fields of the loan.
SELECT p.first_name, p.last_name, p.email, 
       b.title, 
       l.loaned_on, l.return_by, l.returned_on
FROM patrons AS p 
INNER JOIN loans AS l ON p.id = l.patron_id
INNER JOIN books AS b ON l.book_id = b.id
ORDER BY last_name;


-- CHALLENGES:
-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- For all cars in the database, show Model Name, VIN and Sticker Price in one result set.
SELECT md.ModelName, 
    c.VIN, 
    c.StickerPrice 
FROM Model AS md 
INNER JOIN Car AS c 
ON md.ModelId = c.ModelID;

-- In a car database there is a Make table with columns, MakeID and MakeName, a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- For all cars in the database, show Make Name, Model Name, VIN and Sticker Price from the Model and Car tables in one result set.
SELECT mk.MakeName, md.ModelName, c.VIN, c.StickerPrice
FROM Make AS mk
INNER JOIN Model as md ON mk.MakeID = md.MakeID
INNER JOIN Car as c ON c.ModelID = md.ModelID;

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
-- Show the First and Last Name of each sales rep along with SaleAmount from both the SalesRep and Sale tables in one result set.
SELECT sr.FirstName, sr.LastName, s.SaleAmount
FROM Sale AS s
INNER JOIN SalesRep as sr ON s.SalesRepID = sr.SalesRepID;

-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Show all Model names from the Model table along with VIN from the Car table. Make sure models that aren’t in the Car table still show in the results!
SELECT m.ModelName, c.VIN
FROM Model AS m
LEFT OUTER JOIN Car AS c ON m.ModelID = c.ModelID;

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
-- Show all SaleDate, SaleAmount, and SalesRep First and Last name from Sale and SalesRep. Make sure that all Sales appear in results even if there is no SalesRep associated to the sale.
SELECT s.SaleDate, s.SaleAmount, sr.FirstName, sr.LastName
FROM Sale AS s
LEFT OUTER JOIN SalesRep AS sr ON s.SalesRepID = sr.SalesRepID;
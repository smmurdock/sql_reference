-- WHAT IS A COMMON TABLE EXPRESSION?

-- An SQL query that you you name and reuse within a longer query.
-- Makes code more readable, for you and for others reading your code
-- Reusable modules
-- Better matches how to think through data analysis problems


-- Syntax:
-- WITH name AS (
--     Select statement
-- )


-- write your SQL here
SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
FROM Products
JOIN Categories ON PRODUCTS.CategoryID = Categories.Id
WHERE Products.Discontinued = 0;

-- transformed into CTE (no semicolon at the end)
WITH product_details AS (
    SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
    FROM Products
    JOIN Categories ON PRODUCTS.CategoryID = Categories.Id
    WHERE Products.Discontinued = 0
)

-- Call a query using the CTE
SELECT * FROM product_details
ORDER BY CategoryName, ProductName;

-- Change the query using the same CTE
SELECT CategoryName, COUNT(*) AS unique_product_count, SUM(UnitsInStock) AS stock_count
FROM product_details
GROUP BY CategoryName
ORDER BY unique_product_count;
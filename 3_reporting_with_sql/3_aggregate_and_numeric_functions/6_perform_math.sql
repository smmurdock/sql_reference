-- PERFORMING MATH ON NUMERIC TYPES

-- Structure:
SELECT <numeric column> <mathematical operator> <numeric value> FROM <table>;

-- Addition (+), Subtraction (-), Multiplication (*), Division (/)

-- Examples:
SELECT 1 + 4;
SELECT 4 + 3;
SELECT 5 - 3;
SELECT 12 - 20;
SELECT 2 * 5;
SELECT 3 * 10;
SELECT 5 / 2; -- 2
SELECT 5 / 2.0; -- 2.5
SELECT 5.0 / 2; -- 2.5
-- ROUND(<value>, <number of places>)
SELECT name, ROUND(price * 1.06, 2) AS "Price in Florida" FROM products;

-- CHALLENGE:
-- In an ecommerce database we have a products table with the columns id, name, category, description, price and stock_count.
-- The price is in USD. Write a query that returns the product name and price in Pounds Sterling (GBP). The current exchange rate is 1.4 USD to every 1 GBP. Alias the calculated price to price_gbp. Round to two decimal places.
SELECT name, ROUND(price / 1.4, 2) AS price_gbp
FROM products;
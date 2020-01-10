-- DIFFERENCES BETWEEN DATABASES

-- Some databases use different syntax
-- Data functions
-- Human readable dates

-- SQLite
-- To get the current date use: DATE("now")
-- To get the current time use: TIME("now")
-- To get the current date time: DATETIME("NOW")

-- MS SQL
-- To get the current date use: CONVERT(date, GETDATE())
-- To get the current time use: CONVERT(time, GETDATE())
-- To get the current date time: GETDATE()

-- MySQL
-- To get the current date use: CURDATE()
-- To get the current time use: CURTIME()
-- To get the current date time: NOW()

-- Oracle and PostgreSQL
-- To get the current date use: CURRENT_DATE
-- To get the current time use: CURRENT_TIME
-- To get the current date time: `CURRENT_TIMESTAMP

SELECT DATE("now");
SELECT DISTINCT status FROM orders;

SELECT * 
FROM orders 
WHERE status = "place" 
    AND ordered_on = DATE("now");

-- CHALLENGE:
-- In an ecommerce database there's an orders table with the columns id, product_id, user_id, address_id, ordered_on, status and cost.
-- Count the total number of orders that were ordered today and have the status of 'shipped'. Alias it to shipped_today.
SELECT COUNT(ordered_on) AS shipped_today 
FROM orders 
WHERE status = "shipped" 
    AND ordered_on = DATE("now");


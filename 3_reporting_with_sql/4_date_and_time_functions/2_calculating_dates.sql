-- CALCULATING DATES

-- DATE(<time string>)
-- DATE(<time string>, <modifier>)
-- DATE(<time string>, <modifier>, <modifier>, ...)

DATE("now");
DATE("2016-02-01");
DATE("2016-02-01", "-7 days"); -- 2016-01-25
DATE("2016-02-01", "+7 days"); 
DATE("2016-02-01", "+3 months"); 
DATE("2016-02-01", "-21 years"); 

-- How many orders happened in the last 7 days
SELECT COUNT(*) 
FROM orders 
WHERE ordered_on BETWEEN DATE("now", "-7 days") 
    AND DATE("now", "-1 day");

-- How many orders happened during the 7 day period 14 days ago?
SELECT COUNT(*) 
FROM orders 
WHERE ordered_on BETWEEN DATE("now", "-7 days", "-7 days") 
    AND DATE("now", "-1 day", "-7 days");

-- CHALLENGE:
-- In an ecommerce database there's an orders table with the columns id, product_id, user_id, address_id, ordered_on, status and cost.
-- Count the total number of orders that were ordered yesterday and have the status of 'shipped'. Alias it to ordered_yesterday_and_shipped.
SELECT COUNT(ordered_on) AS ordered_yesterday_and_shipped
FROM orders
WHERE status = "shipped" AND ordered_on = DATE("now", "-1 day");

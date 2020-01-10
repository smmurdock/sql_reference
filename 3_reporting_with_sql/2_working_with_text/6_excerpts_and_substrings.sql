-- CREATING EXCERPTS FROM TEXT

-- SUBSTRING - a smaller string from another string
-- Structure:
-- SUBSTR(<value or column>, <start>, <length>)

-- Examples:
SELECT name, SUBSTR(description, 1, 30) || "..." AS short_description, price FROM products;

-- CHALLENGES:
-- In an ecommerce database there's a customers table with id, username, first_name, last_name, password, email and phone columns.
-- Create a report from the customers table that shows their first initial of their first name and alias it as initial. Select their last name too.
SELECT SUBSTR(first_name, 1, 1) AS initial, last_name
FROM customers;
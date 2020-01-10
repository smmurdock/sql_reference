-- REPLACING PORTIONS OF TEXT

-- Structure:
-- REPLACE(<value or column>, <target>, <replacement>)
SELECT * 
FROM addresses 
WHERE REPLACE(state, "California", "CA") = "CA";

SELECT street, city, REPLACE(state, "California", "CA"), zip FROM addresses WHERE REPLACE(state, "California", "CA") = "CA"

-- CHALLENGES
-- In the customers table there's an email column. Write a query that will retrieve all email addresses but will replace the @ symbol with <at> so they all look like andrew<at>teamtreehouse.com.
-- Alias it as obfuscated_email .
SELECT REPLACE(email, '@', '<at>') AS obfuscated_email
FROM customers;
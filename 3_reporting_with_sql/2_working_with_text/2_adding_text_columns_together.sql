-- ADDING TEXT COLUMNS TOGETHER

-- Concatenation Operator
SELECT first_name AS "First Name",
    last_name AS "Last Name",
    email AS "Email",
    phone AS "Phone"
FROM customers;

-- Depending on database software, it could be ||, +, or CONCAT()
-- Structure:
-- <value or column> || <value or column> ||...

SELECT first_name || " " || last_name AS "Full Name"
FROM customers;

-- Does not change the data in the database, only its presentation

-- CHALLENGES:
-- In the library database there's a patrons table listing all the users of the library. The columns are id, first_name, last_name, address, email, library_id and zip_code.
-- Generate a list of strings that are in the following format: Andrew Chalkley <andrew@teamtreehouse.com>. Concatenate the first name, last name and email address for all users.
-- Alias it to to_field. This will be used in the "To" field in email marketing.
SELECT first_name || ' ' || last_name || ' ' || '<' || email || '>' AS to_field 
FROM patrons;

-- In an ecommerce database there's a addresses table. There is an id, nickname, street, city, state, zip, country and user_id columns.
-- Concatenate the street, city, state, zip and country in the following format. Street, City, State Zip. Country e.g. 34 NE 12 st, Portland, OR 97129. USA
-- Alias the concatenated string as address
SELECT street || ', ' || city || ', ' || state || ' ' || zip || '. '|| country AS address
FROM addresses;

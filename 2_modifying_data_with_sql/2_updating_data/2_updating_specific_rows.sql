-- UPDATING SPECIFIC ROWS

-- An update statement for specific rows:
-- Structure:
UPDATE <table> SET <column> = <value> WHERE <condition>;

-- Examples:
UPDATE users SET password = "thisisabadidea" WHERE id = 3;
UPDATE blog_posts SET view_count = 1923 WHERE title = "SQL is Awesome";

-- Update multiple columns for specific rows:
UPDATE <table> SET <column 1> = <value 1>, <column 2> = <value 2> WHERE <condition>;

-- Examples:
UPDATE users SET entry_url = "/home", last_login = "2016-01-05" WHERE id = 329;
UPDATE products SET status = "SOLD OUT", availability = "In 1 Week" WHERE stock_count = 0;

-- Updating Specific Book
-- UPDATE <table> SET <column> = <value> WHERE <condition>;
UPDATE books SET genre = "Classic" WHERE id = 20;

-- Updating Specific Loans
-- UPDATE <table> SET <column> = <value> WHERE <condition>;
UPDATE loans 
SET returned_on = '2015-12-18' 
WHERE patron_id = 1 
AND returned_on IS NULL
AND book_id IN (4, 8);


-- Modifying Data with SQL Challenge
-- We have an eCommerce database and it has a products table. It has the columns id, name, description and price.
-- The warehouse is closing down. There's a clearance sale and all products need to be priced 0.99.
UPDATE products SET price = 0.99;

-- Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, last_name and phone.
-- Update all contacts to have the first name of "Mystery" and last name of "Person".
UPDATE phone_book 
SET first_name = "Mystery", 
    last_name = "Person";

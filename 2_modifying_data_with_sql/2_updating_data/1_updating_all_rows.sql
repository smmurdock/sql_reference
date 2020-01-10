-- UPDATING ALL ROWS IN A TABLE

-- UPDATING ONE VLAUE
-- Structure:
-- An UPDATE statement for all rows
-- The = sign is an assignment operator when used with UPDATE
-- UPDATE <table> SET <column> = <value>;

-- Examples:
UPDATE users SET password = "thisisabadidea";
UPDATE products SET price = 2.99;
-- Make anonymous the last names of all patrons in a data set that is being outsourced to another user/company:
UPDATE patrons SET last_name = "Anonymous";

-- UPDATING MULTIPLE VALUES
-- Structure:
-- Update multiple columns in all rows
-- UDPATE <table> SET <column 1> = <value 1>, <column 2> = <value 2>;

-- Examples:
UPDATE users SET first_name = "Anony", last_name = "Moose";
UPDATE products SET stock_count = 0, price = 0;
-- With the last names in patrons now anonymous, make anonymous the emails and zip codes of the patrons:
UPDATE patrons SET email = "anonymous@email.com", zip_code = 55555;
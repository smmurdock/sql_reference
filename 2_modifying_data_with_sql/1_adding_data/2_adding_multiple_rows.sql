-- ADDING MULTIPLE ROWS TO A TABLE

-- Structure:
-- INSERT INTO <table> (<column 1>, <column 2>, ...) 
--     VALUES 
--         (<value 1>, <value 2>, ...),
--         (<value 1>, <value 2>, ...),
--         (<value 1>, <value 2>, ...);

-- Examples:
INSERT INTO users (username, first_name, last_name) 
    VALUES 
        ("chalkers", "Andrew", "Chalkley"),
        ("ScRiPtKiDdIe", "Kenneth", "Love");

INSERT INTO movies (title, genre, year_released) 
    VALUES 
        ("Starman", "Science Fiction", 1984),
        ("Moulin Rouge!", "Musical", 2001);

-- CHALLENGE: 
-- We have an eCommerce database and it has a products table. It has the columns id, name, description and price.
-- Add a new product to the products table. Use any valid values you want. All columns are required. The id column is auto incrementing.
INSERT INTO products (name, description, price)
    VALUES ("Rubik's Cube", "3D puzzle", 8.99);

-- The same eCommerce database has a users table. It has the columns id, username, password, first_name, and last_name.
-- Add a new user to the users table. Use any valid values you want. All columns are required. The id column is auto incrementing.
-- (Don't enter a real password you'd really use!)
INSERT INTO users (username, password, first_name, last_name)
	VALUES ("naynay", "treeHouseRules", "Shanay", "Murdock");

-- Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, last_name and phone.
-- Add a new contact to the phone_book table. Use any valid values you want. All columns are required. The id column is auto incrementing.
INSERT INTO phone_book (first_name, last_name, phone)
	VALUES ("Shanay", "Murdock", '555-555-5555');


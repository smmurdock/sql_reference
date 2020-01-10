-- REMOVING SPECIFIC ROWS

-- To delete specific rows from a table:
-- Structure:
-- DELETE FROM <table> WHERE <condition>;

-- Examples:
DELETE FROM users WHERE email = "andrew@teamtreehouse.com";
DELETE FROM movies WHERE genre = "Musical";
DELETE FROM products WHERE stock_count = 0;

-- Delete all the Harry Potter books from the library
DELETE FROM books WHERE title LIKE "harry potter%";

-- Delete Michael from the patron list since he has moved and returned all of his books
DELETE FROM patrons WHERE id = 4;
DELETE FROM loans WHERE patron_id = 4;

-- CHANGES ARE PERMANENT


-- Challenges:
-- We have an eCommerce database and it has a products table. It has the columns id, name, description and price.
-- Delete all products priced at 11 or higher!
DELETE FROM products WHERE price >= 11;

-- The same eCommerce database has a users table. It has the columns id, username, password, first_name, and last_name.
-- Delete the user with the username of poley_hands.
DELETE FROM users WHERE username = "poley_hands";

-- Now we're using a database from a smartphone. It has a phone_book table. It has the columns id, first_name, last_name and phone.
-- Delete all contacts with the first name of Jonathan and last name of Luna.
DELETE FROM phone_book WHERE first_name = "Jonathan" AND last_name = "Luna";
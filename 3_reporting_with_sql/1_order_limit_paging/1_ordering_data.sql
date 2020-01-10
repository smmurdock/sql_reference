-- RETRIEVING RESULTS IN A PARTICULAR ORDER

-- Ordering by a single column criteria:
-- Structure:
-- SELECT * FROM <table name> ORDER BY <column> [ASC|DESC];

-- ASC is used to order results in ascending order.
-- DESC is used to order results in descending order.

-- Examples:

SELECT * FROM books ORDER BY title ASC;
SELECT * FROM products WHERE name = "Sonic T-Shirt" ORDER BY stock_count DESC;
SELECT * FROM users ORDER BY signed_up_on DESC;
SELECT * FROM countries ORDER BY population DESC;
SELECT * FROM products ORDER BY stock_count;
SELECT * FROM customers ORDER BY last_name ASC;

-- Ordering by multiple column criteria:
-- SELECT * FROM <table name> ORDER BY <column> [ASC|DESC],
--                                     <column 2> [ASC|DESC],
--                                     ...,
--                                     <column n> [ASC|DESC];
-- Ordering is prioritized left to right.

-- Examples:
SELECT * FROM books ORDER BY    genre ASC, 
                                title ASC;

SELECT * FROM books ORDER BY    genre ASC,
                                year_published DESC;

SELECT * FROM users ORDER BY    last_name ASC,
                                first_name ASC;


-- CHALLENGES
-- Imagine you're a developer on a smartphone with an embedded database. There's a phone_book table with the fields, first_name, last_name and phone. Write the SQL query to order first by last_name and then by first_name in alphabetical order.
-- Select all columns.
SELECT * FROM phone_book ORDER BY last_name ASC, first_name ASC;

-- In a library database there's a books table. There's a title, author, genre and first_published column.
-- Order the books by the most recently published books at the top. Select all columns.
SELECT * FROM books ORDER BY first_published DESC;

-- We're still using the library database there's a books table. There's a title, author, genre and first_published column.
-- Order all books by Genre and then by Title. Select all columns.
SELECT * FROM books ORDER BY genre ASC, title ASC;
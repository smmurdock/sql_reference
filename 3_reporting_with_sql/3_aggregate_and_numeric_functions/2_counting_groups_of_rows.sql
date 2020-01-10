-- COUNTING GROUPS OF ROWS

-- To count aggregated rows with common values use the GROUP BY keywords:
-- Structure:
-- SELECT COUNT(<column>) FROM <table> GROUP BY <column with common value>;

-- Examples:
SELECT category FROM products ORDER BY category;
-- instead:
SELECT category COUNT(*) AS product_count FROM products GROUP BY category;

-- CHALLENGES:
-- In the library database there's a books table. There are id, title, author, genre and first_published columns.
-- Count all the books in each genre. Include the genre column first and the genre_count as the second column of information.
SELECT genre, COUNT(*) AS genre_count FROM books GROUP BY genre;

-- In the library database there's a books table. There are id, title, author, genre and first_published columns.
-- Write a query to count all the unique genres in the books table. Alias it as total_genres.
SELECT COUNT(DISTINCT(genre)) AS total_genres FROM books;
-- COUNTING RESULTS

-- COUNT()
-- total number of rows
-- results of a query
-- distinct entries
-- aggregates

-- only counts rows of columns that have values; nulls are skipped over

-- To count rows you can use the COUNT() function.
-- Structure: 
-- SELECT COUNT(*) FROM <table>;

-- Examples:
SELECT COUNT(*) FROM customers ORDER BY id DESC LIMIT 1;
SELECT COUNT(*) FROM customers WHERE first_name = "Andrew";
SELECT COUNT(*) FROM products WHERE category = "Clothing";

-- To count unique entries use the DISTINCT keyword too:
-- SELECT COUNT(DISTINCT <column>) FROM <table>;

-- Examples: 
SELECT DISTINCT category FROM products;
SELECT COUNT(DISTINCT) category FROM products;

-- CHALLENGES:
-- In the library database, how many books are in the genre of "Science Fiction"?
-- Alias the result as scifi_book_count.
-- The books table has the columns id, title, author, genre and first_published.
SELECT COUNT(id) AS scifi_book_count
FROM books
WHERE genre = "Science Fiction";

-- In the library database, how many books are by the author of "J.K. Rowling"?
-- Alias the result as jk_book_count.
-- The books table has the columns id, title, author, genre and first_published.
SELECT COUNT(id) AS jk_book_count
FROM books
WHERE author = "J.K. Rowling";
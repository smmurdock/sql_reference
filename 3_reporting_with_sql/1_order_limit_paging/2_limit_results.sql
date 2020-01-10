-- LIMITING THE NUMBER OF RESULTS

-- SQLite, PostgreSQL and MySQL
-- To limit the number of results returned, use the LIMIT keyword.
-- SELECT <columns> FROM <table> LIMIT <# of rows>;

-- MS SQL
-- To limit the number of results returned, use the TOP keyword.
-- SELECT TOP <# of rows> <columns> FROM <table>;

-- Oracle
-- To limit the number of results returned, use the ROWNUM keyword in a WHERE clause.
-- SELECT <columns> FROM <table> WHERE ROWNUM <= <# of rows>;

SELECT * FROM campaigns ORDER BY sales DESC LIMIT 3;


-- CHALLENGES:
-- We're using the library database again. There's a books table. There's a title, author, genre and first_published column.
-- Write a query to obtain the first 5 books in the Fantasy genre ordered by the year released. Oldest first. Select all columns.
SELECT * FROM books WHERE genre = "Fantasy" ORDER BY first_published ASC LIMIT 5;

-- We're still using the library database with the books table. There's a title, author, genre and first_published column.
-- Find the earliest Science Fiction book in our library. Only one result should be returned. All columns should be selected.
SELECT * FROM books WHERE genre = "Science Fiction" ORDER BY first_published ASC LIMIT 1;
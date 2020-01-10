-- FINDING THE LENGTH OF TEXT

-- LENGTH() function
SELECT username, 
    LENGTH(username) AS length 
FROM customers 
ORDER BY length DESC 
LIMIT 1;

SELECT username
FROM customers
WHERE LENGTH(username) < 7;

-- CHALLENGES:
-- In the library database there's a books table with the columns id, title, author, genre and first_published.
-- Find the book with the longest title. Show the title and then the length. Alias the result of the length calculation to be longest_length. Only retrieve the longest book.
SELECT title, LENGTH(title) AS longest_length
FROM books
ORDER BY longest_length DESC
LIMIT 1;

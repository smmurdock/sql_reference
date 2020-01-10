-- PAGING THROUGH RESULTS

SELECT * FROM orders LIMIT 50 OFFSET 50; -- returns rows 51-100

-- CHALLENGES
-- In a library database there's a books table. There's a title, author, genre and first_published column.
-- The library database is connected to a website displaying 10 books at a time, sorted by the title alphabetically.
-- Write a query to bring back the second page of results. Please retrieve all columns of information.
SELECT * FROM books ORDER BY title LIMIT 10 OFFSET 10;

-- Imagine you're developing a Contacts application on a phone. You have a database with a phone_book table. It has the columns, first_name, last_name and phone.
-- The phone has a technical limitation to show 20 contacts on a screen at a time. Write the SQL query to retrieve the 3rd page of results from the phone_book table. Contacts are ordered by last name and then first name.
SELECT * FROM phone_book ORDER BY last_name ASC, first_name ASC LIMIT 20 OFFSET 40;


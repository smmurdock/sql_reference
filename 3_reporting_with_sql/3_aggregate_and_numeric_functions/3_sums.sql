-- Getting the Grand Total

-- To total up numeric columns use the SUM() function.
-- Structure:
SELECT SUM(<numeric column>) FROM <table>;
SELECT SUM(<numeric column>) AS <alias> FROM <table>
    GROUP BY <another column>
    HAVING <alias> <operator> <value>;

-- Examples:
-- CEO wants to find the customer who spends the most with the company and give a gift card
SELECT SUM(cost) FROM orders;
SELECT SUM(cost) AS total_spend, 
    user_id 
FROM orders 
GROUP BY user_id 
ORDER BY total_spend DESC 
LIMIT 1;

SELECT * FROM customers WHERE id = 20;

-- CEO wants to give a gift card to any customer who spends over $250
SELECT SUM(cost) AS total_spend,
    user_id
FROM orders 
GROUP BY user_id 
HAVING total_spend > 250
ORDER BY total_spend DESC;

-- CHALLENGES:
-- We're in a movie database. There's a reviews table with the columns of id, movie_id, username, review and rating.
-- The movie "Starman" has the id of 6. Movie ids are found in the movie_id column in the reviews table. Write a query that totals up all ratings for the movie "Starman" in the reviews table. Alias it as starman_total_ratings.
SELECT SUM(rating) AS starman_total_ratings FROM reviews WHERE movie_id = 6;

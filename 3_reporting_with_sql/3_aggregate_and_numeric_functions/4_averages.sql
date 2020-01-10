-- Calculating Averages

-- Structure:
SELECT AVG(<numeric column>) FROM <table>;
SELECT AVG(<numeric column>) FROM <table> GROUP BY <other column>;

-- Examples:
SELECT AVG(cost) AS average 
FROM orders;

SELECT AVG(cost) AS average, 
    user_id 
FROM orders 
GROUP BY user_id;

-- CHALLENGE:
-- We're in a movie database. There's a reviews table with the columns of id, movie_id, username, review and rating.
-- The movie "Starman" has an id of 6. Movie ids are stored in the movie_id column. Calculate the average rating for "Starman". Alias the average as average_rating.
SELECT AVG(rating) AS average_rating FROM reviews WHERE movie_id = 6;

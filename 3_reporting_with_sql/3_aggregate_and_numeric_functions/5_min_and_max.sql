-- GETTING MINIMUM AND MAXIMUM VALUES

-- To get the maximum value of a numeric column use the MAX() function.
-- Structure:
SELECT MAX(<numeric column>) FROM <table>;
SELECT MAX(<numeric column>) FROM <table> GROUP BY <other column>;

-- Examples:


-- To get the minimum value of a numeric column use the MIN() function.
-- Structure:
SELECT MIN(<numeric column>) FROM <table>;
SELECT MIN(<numeric column>) FROM <table> GROUP BY <other column>;

-- Examples:


-- Both:
SELECT AVG(cost) AS average, 
    MAX(cost) AS Maximum, 
    MIN(cost) AS Minimum,
    user_id 
FROM orders 
GROUP BY user_id;

-- CHALLENGE:
-- We're in a movie database. There's a reviews table with the columns of id, movie_id, username, review and rating.
-- The movie "Starman" has an id of 6. Movie ids are stored in the movie_id column. Calculate the minimum and maximum ratings for "Starman". Alias them as star_min and star_max.
SELECT MIN(rating) AS star_min,
	MAX(rating) AS star_max
FROM reviews
WHERE movie_id = 6;
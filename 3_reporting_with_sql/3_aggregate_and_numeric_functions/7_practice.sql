-- COUNT MOVIES
-- Count all the movies in the Musical genre
SELECT COUNT(*) 
FROM movies 
WHERE genre = "Musical";

-- USER AVERAGE RATING
-- Calculate the average rating given by a user across all movies
SELECT AVG(rating) 
FROM reviews;

-- MOVIE AVERAGE RATING
-- Calculate the average rating for each movie and round it to one decimal place
SELECT movie_id, 
    AVG(rating) 
FROM reviews 
GROUP BY movie_id;

-- MIN AND MAX RATING
-- Calculate the minimum and maximum rating for every movie
SELECT movie_id,
  MIN(rating) AS min_rating,
  MAX(rating) AS max_rating
FROM reviews
GROUP BY movie_id;

-- COUNT()
-- SUM()
-- AVG()
-- MIN()
-- MAX()
-- ROUND()
-- DISTINCT
-- GROUP BY 
-- HAVING
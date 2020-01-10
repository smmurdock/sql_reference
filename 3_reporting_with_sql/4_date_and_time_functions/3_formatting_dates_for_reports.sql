-- FORMATTING DATES FOR REPORTING

-- DATE: 2015-04-01
-- TIME: 23:12:01
-- DATETIME: 2015-04-01 23:12:01

DATE("2015-04-01 23:12:01") -- "2015-04-01"
TIME("2015-04-01 23:12:01") -- "23:12:01"

-- STRFTIME()
-- Structure:
-- STRFTIME(<format string>, <time string>, <modifier>)


-- STRFTIME("%m/%d/%Y", "2015-04-01 23:12:01", "+1 year");

-- Examples:
SELECT *, STRFTIME("%d/%m/%Y", ordered_on) AS UK_date FROM orders;

-- CHALLENGE:
-- In a movies database we have a movies table. It has the columns of id, title, date_released and genre.
-- Write a query that returns the title first and the month and year it was released alias as month_year_released. Dates should look like "04/1983" for April 1983.
SELECT title, STRFTIME("%m/%Y", date_released) AS month_year_released FROM movies;
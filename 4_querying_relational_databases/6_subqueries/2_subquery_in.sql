-- USING IN WITH SUBQUERIES TO FILTER DATA

-- Structure:
-- SELECT <columns> FROM <table 1> WHERE <column 1> IN (SELECT <column 1>	FROM <table 2>	WHERE <search_criteria>);
-- You can only select one column in your subquery
SELECT * FROM Sale WHERE CarID IN (1, 3, 5);

-- If we don't know which car ID we need, subqueries help out:
SELECT CarID FROM Car WHERE ModelYear = 2015;

-- then...
SELECT * FROM Sale WHERE CarID IN (SELECT CarID FROM Car WHERE ModelYear = 2015);
SELECT * FROM Sale WHERE CarID NOT IN (SELECT CarID FROM Car WHERE ModelYear = 2015);
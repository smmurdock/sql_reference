-- INTERSECT OPERATIONS

-- INTERSECT is similar to an INNER JOIN
-- As with a UNION, they must have the same columns in both the left and right side of the SQL operation
-- Only returns rows that exist in both tables

-- Structure:
-- <Statement 1> INTERSECT <Statement 2>

-- What are makes that are in both the domestic and foreign makes?
SELECT MakeName FROM Make 
INTERSECT 
SELECT MakeName FROM ForeignMake ORDER BY MakeName DESC;
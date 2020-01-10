-- UNION OPERATIONS 

-- Whereas the INNER JOIN puts data side by side, the UNION combines two data sets into one, stacked one on top of another and have to have a matching number of columns
-- The results are distinct unless primary keys are different

-- Structure:
-- <query 1> UNION <query 2>

-- What are all the domestic and foreign makes?

SELECT MakeName 
FROM Make 
UNION 
SELECT MakeName 
FROM ForeignMake;

SELECT MakeID, 
    MakeName 
FROM Make 
UNION 
SELECT ForeignMakeID, 
    MakeName 
FROM ForeignMake;

-- Only Makes between A-C
SELECT MakeID, 
    MakeName 
FROM Make 
WHERE MakeName < "D"
UNION 
SELECT ForeignMakeID, 
    MakeName 
FROM ForeignMake
WHERE MakeName < "D"
ORDER BY MakeName ASC; 
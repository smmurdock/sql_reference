-- EXCEPT OPERATIONS 

-- EXCEPT uses the same format as INTERSECT but outputs only the records that are not in the latter table

-- Structure: 
-- <Statement 1> EXCEPT <Statement 2>

-- What makes are domestic only?
SELECT MakeName from Make EXCEPT 
SELECT MakeName FROM ForeignMake;


-- <Statement 1> EXCEPT <Statement 2>

-- What makes are foreign only?
SELECT MakeName FROM ForeignMake EXCEPT SELECT MakeName FROM Make;
-- UNION ALL OPERATIONS

-- will return all rows from each select, even if there are duplicates
-- The number of columns need to be the same for your first and second queries

-- <Statement 1> UNION ALL <Statement 2>
SELECT MakeName FROM Make UNION ALL SELECT MakeName FROM ForeignMake;

-- Same query but with ordering
SELECT MakeName FROM Make UNION ALL SELECT MakeName FROM ForeignMake ORDER BY MakeName;

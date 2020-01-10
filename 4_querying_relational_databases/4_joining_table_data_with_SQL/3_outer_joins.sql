-- OUTER JOINS 

-- Structure:
SELECT <columns> 
FROM <table1>  
LEFT OUTER JOIN <table2> 
ON <equality criteria> 
WHERE <search criteria> ...

-- not as common as INNER joins but still useful for more complex queries
-- LEFT, RIGHT, and FULL joins

-- How many models of each make are there?
SELECT mk.MakeName, 
    COUNT(md.ModelName) AS NumberOfModels 
FROM make AS mk 
LEFT OUTER JOIN model AS md 
ON mk.MakeID = md.MakeID
GROUP BY mk.MakeName;

-- if we did an inner join, the BMW make would disappear because of its null model value, making it inaccurate
-- a left outer join returns all data from the first -- or left -- table and only the data with matches in the second table

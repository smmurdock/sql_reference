-- INNER JOINS 

-- Structure:
SELECT <columns> 
FROM <table1> 
INNER JOIN <table2> 
ON <equality criteria> 
WHERE <search criteria> ...

-- What are all Chevy models?
SELECT *
FROM make;

SELECT mk.MakeName, 
    md.ModelName
FROM make AS mk
INNER JOIN model AS md
ON mk.MakeID = md.MakeID
WHERE MakeName = "Chevy";

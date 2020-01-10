-- USING A SUBQUERY TO CREATE A TEMPORARY (OR DERIVED) TABLE

-- Structure:
SELECT <Columns>
FROM <Table>
<INNER | OUTER> JOIN 
(SELECT <Columns> FROM <Table> WHERE <Search Criteria) AS <Alias>
ON <JOIN Criteria>;


-- SELECT <columns> FROM <table 1> WHERE <column 1> <INNER|OUTER> JOIN 
--      (SELECT <column 1>	FROM <table 2>	WHERE <search_criteria>) AS <temporary name> ON <equality criteria>;
SELECT * 
FROM Sale AS s 
INNER JOIN (SELECT CarID FROM Carm ModelYear WHERE ModelYear = 2015) AS t 
ON s.CarID = t.CarID;

-- SELECT <columns> FROM <table 1> WHERE <column 1> <INNER|OUTER> JOIN 
--      (SELECT <column 1>	FROM <table 2>	WHERE <search_criteria>) AS <temporary name> ON <equality criteria>;

-- What is the sum of all sales by rep and location?
SELECT sr.LastName, l.LocationName, SUM(s.SaleAmount) AS SaleAmount 
  FROM Sale AS s 
  INNER JOIN SalesRep AS sr ON s.SalesRepID = sr.SalesRepID 
  INNER JOIN Location AS l ON s.LocationID = l.LocationID 
  GROUP BY sr.LastName, l.LocationName;


-- Break it down into smaller parts
SELECT sr.LastName FROM SalesRep AS sr
LEFT OUTER JOIN () AS Loc1
LEFT OUTER JOIN () AS Loc2;

SELECT SalesRepID, SUM(SaleAmount) AS StLouisAmount
FROM Sale AS s WHERE s.LocationID = 1
GROUP BY SalesRepID;

SELECT SalesRepID, SUM(SaleAmount) AS ColumbiaAmount
FROM Sale AS s WHERE s.LocationID = 2
GROUP BY SalesRepID;

-- Take the separate queries and enter them as subqueries
SELECT sr.LastName,
    Loc1.StLouisAmount,
    Loc2.ColumbiaAmount
FROM SalesRep AS sr
LEFT OUTER JOIN 
    (SELECT SalesRepID, 
        SUM(SaleAmount) AS StLouisAmount
    FROM Sale AS s 
    WHERE s.LocationID = 1
    GROUP BY SalesRepID) AS Loc1
    ON sr.SalesRePID = Loc1.SalesRepID
LEFT OUTER JOIN 
    (SELECT SalesRepID, 
        SUM(SaleAmount) AS ColumbiaAmount
    FROM Sale AS s 
    WHERE s.LocationID = 2
    GROUP BY SalesRepID) AS Loc2
    ON sr.SalesRepID = Loc2.SalesRepID;




-- SINGLE VS DOUBLE QUOTES

-- In SQL there's a difference between using single quotes (') and double quotes ("). Single quotes should be used for String literals (e.g. 'lbs'), and double quotes should be used for identifiers like column aliases (e.g. "Max Weight"):

SELECT maximum_weight || 'lbs' AS "Max Weight" FROM ELEVATOR_DATA;

-- Also, in this course, there's a few instances where we get this wrong and use double quotes with a String literal. Some versions of SQL will let you get away with that. So while you may be able to use them interchangeably here, just know that's not always the case.
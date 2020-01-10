-- PRACTICE

-- LOANS OVERDUE
SELECT * 
FROM loans 
WHERE return_by < DATE("now") 
    AND returned_on IS NULL;

-- LOANS DUE
SELECT * 
FROM loans 
WHERE return_by 
BETWEEN DATE("now") 
    AND DATE("now", "+6 days") 
    AND returned_on IS NULL;

-- FORMAT OUTPUT
SELECT STRFTIME("%d/%m",return_by) AS "Due Date", 
    STRFTIME("%d/%m", loaned_on) AS "Checked Out", 
    STRFTIME("%d/%m", returned_on) AS "Date Returned" 
FROM loans;
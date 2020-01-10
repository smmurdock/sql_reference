-- -- SELECTING DATA
-- INTRODUCTION
-- LEARNING THE DATABASE

-- 7 tables
-- Students
-- Teachers
-- Subjects
-- Rooms
-- Periods
-- Classes (one individual class)
-- Schedule

-- LISTING SUBJECTS
-- Which subjects are taught at Jefferson Middle School?
SELECT * FROM SUBJECTS;

-- COUNTING STUDENTS
-- How many students do they have at Jefferson Middle School?
SELECT COUNT(*) FROM STUDENTS; -- 512

-- FINDING THE ID
-- What's Yvette Levy's student ID number?
SELECT * FROM STUDENTS
WHERE FIRST_NAME = "Yvette" AND LAST_NAME = "Levy"; -- 10509

-- LISTING TEACHERS
-- Generate a list of teachers sorted alphabetically by last name.
SELECT FIRST_NAME, LAST_NAME
FROM TEACHERS 
ORDER BY LAST_NAME ASC;

-- 'A' STUDENTS
-- Which students have last names starting with 'A'?
SELECT *
FROM STUDENTS
WHERE LAST_NAME LIKE "A%";
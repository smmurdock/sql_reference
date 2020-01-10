-- PRACTICE 

-- Create a list of all books in both north and south locations
SELECT * FROM books_north UNION SELECT * FROM books_south;

-- Create a list of unique books. 
-- Books that are in the north or south location, but not in both locations.
SELECT * FROM books_north EXCEPT SELECT * FROM books_south;
SELECT * FROM books_south EXCEPT SELECT * FROM books_north;

-- Create a list of duplicate books. 
-- Book titles that exist in BOTH north AND south locations
SELECT * FROM books_north UNION ALL SELECT * FROM books_south;


-- CHALLENGES:
-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create a distinct result set of fruit and vegetable names.
SELECT Name FROM Fruit UNION SELECT Name FROM Vegetable;

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create a list of all fruits and vegetables starting with the letters A through K . In other words all fruit and vegetables that don't start with the letter L to Z.
SELECT Name FROM Fruit WHERE Name < "L"
UNION
SELECT Name FROM Vegetable WHERE Name < "L";

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create a list of fruits and vegetables that includes any potential duplicate values. Ensure that it is in alphabetical order so that the duplicates are next to each other!
SELECT Name FROM Fruit
UNION ALL
SELECT Name FROM Vegetable
ORDER BY Name ASC;

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create an alphabetical list of produce that is considered both a fruit and a vegetable.
SELECT Name FROM Fruit
INTERSECT
SELECT Name FROM Vegetable
ORDER BY Name ASC;

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create an alphabetical list of fruits that are NOT considered a vegetable.
SELECT Name FROM Fruit
EXCEPT
SELECT Name FROM Vegetable
ORDER BY Name ASC;

-- There are two tables Fruit and Vegetable table. The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create an alphabetical list of vegetables that are NOT considered a fruit.
SELECT Name FROM Vegetable
EXCEPT
SELECT Name FROM Fruit
ORDER BY Name ASC;

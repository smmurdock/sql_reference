-- ADDING A ROW TO A TABLE
-- INSERT INTO <table> VALUES (<value 1>, <value 2>, ...);

-- Insert George Orwell's 1984
INSERT INTO books VALUES (16, "1984", "George Orwell", "Fiction", 1949);

-- auto increment ID so that multiple users don't overlap values
-- the database is setup with auto-increment on ID so NULL will auto-fill it
-- Insert Dune
INSERT INTO books VALUES (NULL, "Dune", "Frank Herbert", "Science Fiction", 1965);

-- Enter new entry into loans where book has not been returned yet
-- SQL's way of allowing you to see what you're entering:
-- You can order these any way you like as long as the corresponding info are in the same positions in both sections
INSERT INTO loans (id, book_id, patron_id, loaned_on, return_by, returned_on) VALUES (NULL, 2, 4, '2015-12-14', '2015-12-21', NULL);
-- this can also be written as:
INSERT INTO loans (book_id, patron_id, loaned_on, return_by) VALUES (2, 4, '2015-12-14', '2015-12-21');
-- since the "missing" values CAN accept NULL values, the database automatically assigns NULL to those values

-- errors will show up if you miss entering specific information
-- in the loans table, an example is book_id - this has to be entered to be a valid entry

-- INTRODUCTION TO TRANSACTIONS

-- Autocommit - every statement you write gets saved to disk.
-- Seeding - populating a database for the first time.
-- Script file - a file containing SQL statements.

-- SQL Used
-- Switch autocommit off and begin a transaction:
BEGIN TRANSACTION;

-- Or simply:
BEGIN;

-- To save all results of the statements after the start of the transaction to disk:
COMMIT;

-- To reset the state of the database to before the begining of the transaction:
ROLLBACK;
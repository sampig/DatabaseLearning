/*
  Create tables
*/
-- Create table Book
CREATE TABLE Book (
    BookID int primary key,
    Title varchar(100)
);
-- Create table Reader
CREATE TABLE Reader (
    ReaderID int primary key,
    Name varchar(100)
);
-- Create table BookLending
CREATE TABLE BookLending (
    BookID int references Book(BookID),
    ReaderID int references Reader(ReaderID),
    ReturnDate date
);
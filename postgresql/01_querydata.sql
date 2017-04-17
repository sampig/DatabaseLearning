/*
  Query data
*/
-- All books in DB:
SELECT b.Title
  FROM Book b
;
-- All books being lent:
SELECT b.Title
  FROM BookLending bl
 INNER JOIN Book b
    ON bl.BookID = b.BookID
 WHERE bl.ReturnDate > CURRENT_DATE
;
-- All books that have to be returned before 2016-10-29:
SELECT b.Title
  FROM BookLending bl
 INNER JOIN Book b
    ON bl.BookID = b.BookID
 WHERE bl.ReturnDate < (Date '2016-10-29')
;
SELECT b.Title
  FROM Book b
 INNER JOIN BookLending bl
    ON bl.BookID = b.BookID
   AND bl.ReturnDate < (Date '2016-10-29')
;
-- All books lent by Peter:
SELECT b.Title, bl.ReturnDate
  FROM BookLending bl
 INNER JOIN Book b
    ON bl.BookID = b.BookID
 INNER JOIN Reader r
    ON bl.ReaderID = r.ReaderID
   AND r.Name = 'Peter'
;
SELECT b.Title, bl.ReturnDate
  FROM BookLending bl
 INNER JOIN Book b
    ON bl.BookID = b.BookID
 INNER JOIN Reader r
    ON bl.ReaderID = r.ReaderID
 WHERE r.Name = 'Peter'
;
-- Number of books lent by Laura:
SELECT COUNT(DISTINCT bl.BookID)
  FROM BookLending bl
 INNER JOIN Reader r
    ON bl.ReaderID = r.ReaderID
   AND r.Name = 'Laura'
;
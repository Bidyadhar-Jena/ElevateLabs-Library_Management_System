SELECT * FROM Authors;

SELECT * FROM Books;

SELECT * FROM Students;

SELECT * FROM Borrow;

UPDATE Books
SET price = 399
WHERE book_id = 1;

DELETE FROM Borrow
WHERE borrow_id = 2;

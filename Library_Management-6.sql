-- Library Management System --
-- _________________________ --

-- Project of Task 6 for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --

USE Library;

-- Subquery in WHERE clause

SELECT title, price
FROM Books
WHERE price > (
    SELECT AVG(price)
    FROM Books
);

-- Subquery with IN

SELECT student_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Borrow
);

-- Subquery with EXISTS

SELECT student_name
FROM Students s
WHERE EXISTS (
    SELECT *
    FROM Borrow b
    WHERE s.student_id = b.student_id
);

-- Scalar Subquery

SELECT title,
(
    SELECT MAX(price)
    FROM Books
) AS Highest_Price
FROM Books;

-- Correlated Subquery

SELECT title, price
FROM Books b1
WHERE price > (
    SELECT AVG(price)
    FROM Books b2
    WHERE b1.genre = b2.genre
);

-- Subquery in FROM clause

SELECT genre, Average_Price
FROM (
    SELECT genre,
    AVG(price) AS Average_Price
    FROM Books
    GROUP BY genre
) AS Genre_Average;

-- Nested subquery using =

SELECT author_name
FROM Authors
WHERE author_id = (
    SELECT author_id
    FROM Books
    WHERE title = 'Harry Potter'
);

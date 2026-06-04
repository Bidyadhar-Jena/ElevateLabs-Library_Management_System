-- Library Management System --
-- _________________________ --

-- Project of Task 3 for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --

-- __________________________________________ --
-- Task 3 : Basic SELECT Queries
-- __________________________________________ --

USE Library;

-- SELECT all columns from Authors table

SELECT * FROM Authors;

-- SELECT specific columns from Books table

SELECT title, genre, price
FROM Books;

-- WHERE condition

SELECT *
FROM Students
WHERE student_name = 'Bidyadhar Jena';

-- AND condition

SELECT *
FROM Books
WHERE genre = 'Fantasy'
AND price > 300;

-- OR condition

SELECT *
FROM Authors
WHERE country = 'India'
OR country = 'Japan';

-- LIKE operator

SELECT *
FROM Students
WHERE student_name LIKE 'B%';

-- BETWEEN operator

SELECT *
FROM Books
WHERE price BETWEEN 200 AND 500;

-- ORDER BY ascending

SELECT *
FROM Books
ORDER BY price ASC;

-- ORDER BY descending

SELECT *
FROM Books
ORDER BY price DESC;

-- LIMIT operator

SELECT *
FROM Books
LIMIT 2;

-- DISTINCT keyword

SELECT DISTINCT genre
FROM Books;

-- Aliasing

SELECT student_name AS Name,
email AS Email_ID
FROM Students;
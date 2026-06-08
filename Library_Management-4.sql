-- Library Management System --
-- _________________________ --

-- Project of Task 4 for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --


USE Library;

-- COUNT function

SELECT COUNT(*) AS Total_Books
FROM Books;

-- SUM function

SELECT SUM(price) AS Total_Price
FROM Books;

-- AVG function

SELECT AVG(price) AS Average_Price
FROM Books;

-- MAX function

SELECT MAX(price) AS Highest_Price
FROM Books;

-- MIN function

SELECT MIN(price) AS Lowest_Price
FROM Books;

-- GROUP BY genre

SELECT genre, COUNT(*) AS Total_Books
FROM Books
GROUP BY genre;

-- GROUP BY with AVG

SELECT genre, AVG(price) AS Average_Price
FROM Books
GROUP BY genre;

-- GROUP BY with HAVING

SELECT genre, COUNT(*) AS Total_Books
FROM Books
GROUP BY genre
HAVING COUNT(*) >= 1;

-- COUNT DISTINCT values

SELECT COUNT(DISTINCT genre) AS Unique_Genres
FROM Books;

-- ROUND function

SELECT ROUND(AVG(price), 2) AS Rounded_Average
FROM Books;

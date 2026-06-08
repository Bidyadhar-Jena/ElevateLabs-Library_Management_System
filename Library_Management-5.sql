-- Library Management System --
-- _________________________ --

-- Project of Task 5 for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --

USE Library;

-- INNER JOIN

SELECT Students.student_name,
Books.title,
Borrow.borrow_date
FROM Borrow
INNER JOIN Students
ON Borrow.student_id = Students.student_id
INNER JOIN Books
ON Borrow.book_id = Books.book_id;

-- LEFT JOIN

SELECT Students.student_name,
Borrow.borrow_date
FROM Students
LEFT JOIN Borrow
ON Students.student_id = Borrow.student_id;

-- RIGHT JOIN

SELECT Books.title,
Borrow.borrow_date
FROM Borrow
RIGHT JOIN Books
ON Borrow.book_id = Books.book_id;

-- FULL OUTER JOIN
--(MySQL does not support FULL OUTER JOIN directly
-- Using UNION to simulate FULL OUTER JOIN )

SELECT Students.student_name,
Borrow.borrow_date
FROM Students
LEFT JOIN Borrow
ON Students.student_id = Borrow.student_id

UNION

SELECT Students.student_name,
Borrow.borrow_date
FROM Students
RIGHT JOIN Borrow
ON Students.student_id = Borrow.student_id;

-- JOIN with multiple tables

SELECT Students.student_name,
Books.title,
Authors.author_name
FROM Borrow
INNER JOIN Students
ON Borrow.student_id = Students.student_id
INNER JOIN Books
ON Borrow.book_id = Books.book_id
INNER JOIN Authors
ON Books.author_id = Authors.author_id;

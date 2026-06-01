-- Library Management System --
-- _________________________ --

-- Project of Task 2 for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --

-- INSERT INTO for adding rows --

INSERT INTO Students(student_name, email, phone)
VALUES
('Rahul Sharma', NULL, '9876543210');

-- Handle missing value using DEFAULT

ALTER TABLE Students
MODIFY email VARCHAR(100) DEFAULT 'Not Provided';

INSERT INTO Students(student_name)
VALUES
('Aman Das');

-- UPDATE with WHERE condition

UPDATE Books
SET price = 599.00
WHERE book_id = 2;

-- DELETE with WHERE condition

DELETE FROM Borrow
WHERE borrow_id = 2;

-- Display Updated Tables

SELECT * FROM Students;
SELECT * FROM Books;
SELECT * FROM Borrow;
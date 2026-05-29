-- Library Management System --
-- _________________________ --

-- Project for Elevate Labs SQL Internship --
-- Submitting by Bidyadhar Jena --
-- ________________________________________ --


CREATE DATABASE Library;

USE Library;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(10,2),
    author_id INT,

    FOREIGN KEY (author_id)
    REFERENCES Authors(author_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY (book_id)
    REFERENCES Books(book_id)
);

INSERT INTO Authors(author_name, country)
VALUES
('Kenichi Iwao', 'Japan'),
('J.K. Rowling', 'UK'),
('Ruskin Bond', 'India');

INSERT INTO Books(title, genre, price, author_id)
VALUES
('Resident Evil', 'Horror', 299.00, 1),
('Harry Potter', 'Fantasy', 499.00, 2),
('The Blue Umbrella', 'Fiction', 199.00, 3);

INSERT INTO Students(student_name, email, phone)
VALUES
('Bidyadhar Jena', 'bid*******2@gmail.com', '732*****05'),
('Priya Das', 'priya@gmail.com', '9123456780');

INSERT INTO Borrow(student_id, book_id, borrow_date, return_date)
VALUES
(1, 2, '2025-05-20', '2025-05-30'),
(2, 1, '2025-05-25', '2025-06-05');

SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Students;
SELECT * FROM Borrow;
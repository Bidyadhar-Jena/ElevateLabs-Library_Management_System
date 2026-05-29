# Library Management System Database

## Overview
This project is a simple Library Management System Database developed using MySQL. The database is designed to manage books, authors, students, and borrowing records efficiently using relational database concepts.

---

## Features
- Database creation using SQL
- Multiple related tables
- Primary Key and Foreign Key implementation
- Sample data insertion
- Relationship management between tables
- Basic SQL queries for data retrieval

---

## Tables Included

### Authors
Stores author information.

| Column | Description |
|---|---|
| author_id | Unique ID for authors |
| author_name | Name of the author |
| country | Author's country |

### Books
Stores book details.

| Column | Description |
|---|---|
| book_id | Unique ID for books |
| title | Book title |
| genre | Book genre |
| price | Price of book |
| author_id | Reference to Authors table |

### Students
Stores student information.

| Column | Description |
|---|---|
| student_id | Unique ID for students |
| student_name | Student name |
| email | Student email |
| phone | Contact number |

### Borrow
Stores borrowing records.

| Column | Description |
|---|---|
| borrow_id | Unique borrow record ID |
| student_id | Reference to Students table |
| book_id | Reference to Books table |
| borrow_date | Date of issue |
| return_date | Return date |

---

## Technologies Used
- MySQL
- SQL
- MySQL Workbench

---

## DBMS Concepts Covered
- Database Schema Design
- Normalization
- Primary Key
- Foreign Key
- Constraints
- ER Diagram
- One-to-Many Relationships

---

## ER Diagram
The ER Diagram represents the relationships between Authors, Books, Students, and Borrow tables.

---

## Project Files
- `Library_Management.sql`
- `ER_Diagram.pdf`
- `README.md`

---

## Conclusion
This project demonstrates the implementation of a relational database system using MySQL for managing a library efficiently.

## Author
 Bidyadhar Jena

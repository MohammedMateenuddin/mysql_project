🎓 Student Management System (MySQL Project)
📌 Project Overview

The Student Management System is a relational database built in MySQL to manage students, teachers, courses, enrollments, and exam marks.
It demonstrates database design, normalization, and advanced SQL queries for real-world use cases like student performance tracking and teacher workloads.

🗂️ Database Schema

The database consists of 5 main tables:

students → stores student details

teachers → stores faculty details

courses → course information (linked to teachers)

enrollments → many-to-many relation between students and courses

marks → exam results for each student per course

📌 ER Diagram Example:
(You can add a diagram image here, e.g., from dbdiagram.io
)

students ───< enrollments >─── courses ───< marks
    │                             │
    └──────────── teachers <──────┘

⚙️ Features Implemented

✔️ Add new students, teachers, and courses
✔️ Enroll students into courses
✔️ Record exam marks for students
✔️ Retrieve student performance insights
✔️ Identify toppers in each course
✔️ Calculate average marks for each student
✔️ Track teacher workloads (number of courses handled)

💻 SQL Highlights

This project demonstrates:

DDL (Data Definition Language) → CREATE, ALTER, DROP

DML (Data Manipulation Language) → INSERT, UPDATE, DELETE

Joins → INNER JOIN, LEFT JOIN

Aggregate Functions → AVG(), COUNT(), MAX()

GROUP BY & HAVING

Subqueries

Window Functions (RANK, ROW_NUMBER)

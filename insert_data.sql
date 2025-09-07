students
INSERT INTO students (first_name,last_name,email,gender,dob)
VALUES
 ('Ali','Khan','ali.khan@example.com','M','2001-05-12'),
 ('Sara','Patel','sara.patel@example.com','F','2002-07-23'),
 ('John','Smith','john.smith@example.com','M','2000-01-30');

-- teachers
INSERT INTO teachers (first_name,last_name,email,dept)
VALUES
 ('Ravi','Sharma','ravi.sharma@example.com','Computer Science'),
 ('Aisha','Khan','aisha.khan@example.com','Mathematics');

-- courses
INSERT INTO courses (course_name,credits,teacher_id)
VALUES
 ('Database Systems',4,1),
 ('Linear Algebra',3,2),
 ('Computer Networks',4,1);

-- enrollments
INSERT INTO enrollments (student_id,course_id) VALUES
 (1,1),(1,2),
 (2,2),(2,3),
 (3,1),(3,3);

-- marks
INSERT INTO marks (student_id,course_id,exam_date,marks_obtained)
VALUES
 (1,1,'2025-03-01',85),
 (1,2,'2025-03-01',78),
 (2,2,'2025-03-01',92),
 (2,3,'2025-03-01',88),
 (3,1,'2025-03-01',65),
 (3,3,'2025-03-01',70);



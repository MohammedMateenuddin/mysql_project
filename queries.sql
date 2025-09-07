-- 1.List all students with enrolled courses 
SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 2.Find average marks per student
SELECT s.first_name, s.last_name, AVG(m.marks_obtained) AS avg_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id;

-- 3.Find top-performing student in each course
SELECT c.course_name, s.first_name, s.last_name, m.marks_obtained
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN courses c ON m.course_id = c.course_id
WHERE (m.student_id, m.marks_obtained) IN (
  SELECT student_id, MAX(marks_obtained)
  FROM marks
  GROUP BY course_id
);

-- 4.Count students enrolled in each course
SELECT c.course_name, COUNT(e.student_id) AS num_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id;

-- 5.Teacher workload (courses taught per teacher)
SELECT t.first_name, t.last_name, COUNT(c.course_id) AS num_courses
FROM teachers t
LEFT JOIN courses c ON t.teacher_id = c.teacher_id
GROUP BY t.teacher_id;

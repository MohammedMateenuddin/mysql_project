CREATE DATABASE IF NOT EXISTS student_mgmt;
USE student_mgmt;

-- students table
CREATE TABLE students (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  gender ENUM('M','F'),
  dob DATE,
  admission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- teachers table
CREATE TABLE teachers (
  teacher_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(150) UNIQUE,
  hire_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  dept VARCHAR(100)
);

-- courses table
CREATE TABLE courses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(150) NOT NULL,
  credits INT DEFAULT 3,
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- enrollments (students ↔ courses)
CREATE TABLE enrollments (
  enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
  FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);

-- marks table
CREATE TABLE marks (
  mark_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  exam_date DATE,
  marks_obtained DECIMAL(5,2),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);




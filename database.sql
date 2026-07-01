-- ============================================
-- Student Management System - Database Setup
-- Run this file in MySQL Workbench or terminal
-- ============================================

CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

-- Users Table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

-- Students Table
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    semester VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- Attendance Table
CREATE TABLE IF NOT EXISTS attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    date DATE NOT NULL,
    status ENUM('Present', 'Absent') DEFAULT 'Absent',
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

-- Default Admin User (username: admin, password: admin123)
INSERT INTO users (username, password) VALUES ('admin', 'admin123')
ON DUPLICATE KEY UPDATE username=username;

-- Sample Students
INSERT INTO students (name, department, semester, email, phone) VALUES
('Rahim Uddin', 'CSE', '5th', 'rahim@gmail.com', '01711000001'),
('Karim Hossain', 'EEE', '3rd', 'karim@gmail.com', '01711000002'),
('Fatema Begum', 'BBA', '7th', 'fatema@gmail.com', '01711000003'),
('Sumon Ahmed', 'CSE', '1st', 'sumon@gmail.com', '01711000004'),
('Nasrin Akter', 'EEE', '5th', 'nasrin@gmail.com', '01711000005');

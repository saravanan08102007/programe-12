CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

-- Department: 3 records
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Mathematics');

-- Faculty: 3 records
INSERT INTO Faculty (FacultyID, FacultyName) VALUES
(101, 'Dr. Kumar'),
(102, 'Dr. Priya'),
(103, 'Dr. Arun');

-- Student: 4 records
INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Saravanan', 1),
(1002, 'Arun', 1),
(1003, 'Priya', 2),
(1004, 'Kumar', 3);

-- Course: 4 records
INSERT INTO Course (CourseID, CourseName, FacultyID) VALUES
(201, 'Database Management System', 101),
(202, 'Python Programming', 102),
(203, 'Computer Networks', 103),
(204, 'Data Structures', 101);

-- Enrollment: 5 records
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 204),
(4, 1003, 201),
(5, 1004, 203);

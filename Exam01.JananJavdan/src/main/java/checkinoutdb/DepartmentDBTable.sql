CREATE DATABASE IF NOT EXISTS checkinoutdb;
USE checkinoutdb;

CREATE TABLE IF NOT EXISTS department (
        DepartmentId INT AUTO_INCREMENT PRIMARY KEY,
        Title VARCHAR(50) NOT NULL,
        ParentDepartmentId INT,
        FOREIGN KEY (ParentDepartmentId) REFERENCES department(DepartmentId)
);

INSERT INTO department (Title, ParentDepartmentId)
VALUES
    ('Instructors', NULL),
    ('Human Resources', NULL),
    ('Administration', NULL),
    ('IT Services', NULL),
    ('Accounting', NULL),
    ('Java', 1),
    ('C#', 1),
    ('JavaScript', 1),
    ('Python', 1),
    ('System and Networking', 1),
    ('Ethical Hacking', 1),
    ('Data Analysis', 1),
    ('Job Applications', 2),
    ('Personal Development', 2),
    ('Financial Accounting', 5),
    ('Student Reimbursement', 5),
    ('Computer Hardware', 4);

-- Lees de records van alle afdelingen die sub-afdelingen zijn van 'Instructors'
SELECT * FROM department WHERE ParentDepartmentId = 1;

-- Selectie-query om afdelingen te zoeken die 'java' in hun titels bevatten
SELECT * FROM department WHERE Title LIKE '%java%';



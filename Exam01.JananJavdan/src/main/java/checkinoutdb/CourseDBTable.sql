USE checkinoutdb;
CREATE TABLE IF NOT EXISTS course (
            course_id CHAR(20) NOT NULL UNIQUE,
            title VARCHAR(255) NOT NULL,
            start_date DATE NOT NULL,
            end_date DATE NULL,
            PRIMARY KEY (course_id)
);

INSERT INTO course (course_id, title, start_date, end_date)
VALUES
    ('JAVA_SEP_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2023-09-01', '2024-09-01'),
    ('JAVA_JAN_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2023-01-01', '2024-01-01'),
    ('JAVA_JUNI_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2023-06-01', '2024-06-01'),
    ('CSHARP_JUNI_2023', 'C# fundamentals, MSSQL, Microsoft Examinations', '2023-06-01', '2024-06-01');


SELECT * FROM course;

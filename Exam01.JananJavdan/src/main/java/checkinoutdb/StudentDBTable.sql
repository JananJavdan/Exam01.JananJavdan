CREATE TABLE IF NOT EXISTS student (
        student_id INT AUTO_INCREMENT,
        person_id CHAR(16) NOT NULL UNIQUE ,
        course_id CHAR(10) NULL,
        total_attendance DOUBLE NULL,
        PRIMARY KEY (student_id),
        CONSTRAINT person_to_student_fk
            FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Voeg minstens 4 nieuwe records van studenten toe
INSERT INTO student (person_id, course_id, total_attendance)
VALUES
    ('1', 'CS101', 90.5),
    ('2', 'ENG101', 85.0),
    ('3', 'MATH101', 92.3),
    ('4', 'PHYS101', 88.7);

-- Probeer een 5de student toe te voegen en verwijder deze record vervolgens
INSERT INTO student (person_id, course_id, total_attendance)
VALUES
    ('5', 'CHEM101', 91.2);

-- Verwijder de toegevoegde record van de 5de student
DELETE FROM student WHERE student_id = 5;

-- Selectiequery om de toegevoegde studentenrecords te bekijken
SELECT * FROM student;

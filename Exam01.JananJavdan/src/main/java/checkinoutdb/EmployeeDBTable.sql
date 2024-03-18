CREATE TABLE IF NOT EXISTS employee (
        employee_id INT NOT NULL UNIQUE AUTO_INCREMENT,
        person_id CHAR(16) NOT NULL UNIQUE ,
        department_id INT NOT NULL,
        work_start_date DATE NOT NULL,
        work_end_date DATE NULL,
        profile_photo BLOB NULL,
        PRIMARY KEY (employee_id),
        FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Voeg minstens 3 werknemersrecords toe
INSERT INTO employee (person_id, department_id, work_start_date)
VALUES
    ('1', 1, '2024-03-01'),
    ('2', 1, '2024-03-01'),
    ('3', 2, '2024-03-02');

-- Optionele selectiequery om de toegevoegde werknemersrecords te bekijken
SELECT * FROM employee;

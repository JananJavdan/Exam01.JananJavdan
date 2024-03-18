CREATE TABLE IF NOT EXISTS person (
            person_id CHAR(16) NOT NULL UNIQUE,
            first_name VARCHAR(255) NOT NULL,
            last_name VARCHAR(255) NOT NULL,
            date_of_birth DATE NOT NULL,
            gender CHAR(1) DEFAULT 'U',
            nick_name VARCHAR(20),
            user_id INT NOT NULL,
            PRIMARY KEY (person_id),
            FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Update de voornaam en achternaam van een persoon
UPDATE person SET first_name = 'Jane', last_name = 'Doe' WHERE person_id = 'johndoe123';

-- Voeg een nieuwe persoon toe met standaardwaarden voor geslacht
INSERT INTO person (person_id, first_name, last_name, date_of_birth, nick_name, user_id)
VALUES ('1', 'Jane', 'Doe', '1990-01-01', 'J', 1);

-- Selectiequery om te controleren of de update correct is uitgevoerd
SELECT * FROM person WHERE person_id = 'janedoe456';

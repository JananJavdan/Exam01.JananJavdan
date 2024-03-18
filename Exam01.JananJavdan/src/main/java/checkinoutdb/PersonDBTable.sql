CREATE TABLE IF NOT EXISTS person (
            person_id CHAR(16) NOT NULL UNIQUE,
            first_name VARCHAR(255) NOT NULL,
            last_name VARCHAR(255) NOT NULL,
            date_of_birth DATE NOT NULL,
            gender CHAR(1) DEFAULT 'U',
            nick_name VARCHAR(20),
            user_id INT NOT NULL,
            PRIMARY KEY (person_id),
            FOREIGN KEY (user_id) REFERENCES user(user_id)
);

-- Update de voornaam en achternaam van een persoon
UPDATE person SET first_name = 'Jane', last_name = 'Doe' WHERE person_id = 'johndoe123';

-- Voeg een nieuwe persoon toe met standaardwaarden voor geslacht
INSERT INTO person (person_id, first_name, last_name, date_of_birth, nick_name, user_id)
VALUES ('1', 'Jane', 'Doe', '1990-01-01', 'J', 1),
       ('2', 'John', 'Smith', '1985-05-15', 'Johnny', 2),
       ('3', 'Emily', 'Johnson', '1992-08-20', 'Em', 3),
       ('4', 'Michael', 'Williams', '1988-03-10', 'Mike', 4),
       ('5', 'Sophia', 'Brown', '1995-11-25', 'Sophie', 5);


-- Selectiequery om te controleren of de update correct is uitgevoerd
SELECT * FROM person WHERE person_id = 'janedoe456';

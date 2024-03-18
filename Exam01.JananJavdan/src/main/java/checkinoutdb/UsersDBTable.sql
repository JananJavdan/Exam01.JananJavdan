CREATE TABLE IF NOT EXISTS users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        email VARCHAR(255) UNIQUE NOT NULL,
        phone_number VARCHAR(13) UNIQUE NOT NULL,
        password VARCHAR(255) NOT NULL,
        activation_code VARCHAR(255) NOT NULL
);

-- Maak een nieuwe gebruiker aan
INSERT INTO users (email, phone_number, password, activation_code)
VALUES ('johndoe@example.com', '1234567890', 'password123', '123456');

-- Update het wachtwoord van de 2e gebruiker
UPDATE users SET password = '2021' WHERE id = 2;

-- Selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'
SELECT * FROM users WHERE email LIKE 'Al%';


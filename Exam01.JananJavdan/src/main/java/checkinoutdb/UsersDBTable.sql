CREATE TABLE IF NOT EXISTS user (
        user_id INT AUTO_INCREMENT unique PRIMARY KEY,
        email VARCHAR(255)  NOT NULL,
        phone_number VARCHAR(13)  NOT NULL,
        password VARCHAR(255) NOT NULL,
        activation_code VARCHAR(255) NOT NULL
);


INSERT INTO user (email, phone_number, password, activation_code)
VALUES ('johndoe@example.com', '1234567890', 'password123', '123456'),
       ('janedoe@example.com', '9876543210', 'password456', '654321'),
       ('alice@example.com', '4567890123', 'password789', '789456'),
       ('bob@example.com', '9870123456', 'passwordabc', '456789'),
       ('charlie@example.com', '5678901234', 'passworddef', '321654'),
       ('david@example.com', '6543210987', 'pass123word', '987123'),
       ('emily@example.com', '2345678901', 'password456', '654789'),
       ('frank@example.com', '8901234567', 'password789', '789321'),
       ('grace@example.com', '1234567890', 'pass123word', '123789'),
       ('henry@example.com', '9012345678', 'passwordabc', '456123'),
       ('irene@example.com', '3456789012', 'passworddef', '789654'),
       ('jack@example.com', '8901234567', 'password123', '321456'),
       ('kate@example.com', '4567890123', 'password456', '654321'),
       ('lucas@example.com', '6789012345', 'password789', '987654'),
       ('sarah@example.com', '1234567890', 'password123', '123456'),
       ('megan@example.com', '5678901234', 'passwordabc', '123456');

SELECT id FROM user WHERE email = 'johndoe@example.com';


-- Update het wachtwoord van de 2e gebruiker
UPDATE user SET password = '2021' WHERE id = 2;

-- Selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'
SELECT * FROM user WHERE email LIKE 'Al%';


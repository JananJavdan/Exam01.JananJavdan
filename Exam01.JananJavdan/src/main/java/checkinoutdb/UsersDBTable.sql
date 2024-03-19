USE checkinoutdb;
CREATE TABLE IF NOT EXISTS users (
        users_id INT AUTO_INCREMENT unique PRIMARY KEY,
        email VARCHAR(255)  NOT NULL,
        phone_number VARCHAR(13)  NOT NULL,
        password VARCHAR(255) NOT NULL,
        activation_code VARCHAR(255) NOT NULL
);


INSERT INTO users (email, phone_number, password, activation_code)
VALUES ('Fatemeh.Javdan@student.intecbrussel.be', '1234567890', 'password123', '123456'),
       ('janedoe@example.com', '9876543210', 'password456', '654321'),
       ('alice@example.com', '4567890123', 'password789', '789456'),
       ('bob@example.com', '9870123456', 'password765', '456789'),
       ('charlie@example.com', '5678901234', 'password908', '321654'),
       ('david@example.com', '6543210987', 'password123', '987123'),
       ('emily@example.com', '2345678901', 'password456', '654789'),
       ('frank@example.com', '8901234567', 'password789', '789321'),
       ('grace@example.com', '1234567890', 'password675', '123789'),
       ('henry@example.com', '9012345678', 'password876', '456123'),
       ('irene@example.com', '3456789012', 'password098', '789654'),
       ('jack@example.com', '8901234567', 'password124', '321456'),
       ('kate@example.com', '4567890123', 'password456', '654321'),
       ('lucas@example.com', '6789012345', 'password789', '987654'),
       ('sarah@example.com', '1234567890', 'password123', '123456'),
       ('megan@example.com', '5678901234', 'password317', '123456'),
       ('bobi@example.com', '5551234567', 'password1234', '987654'),
       ('sarah@example.com', '9876543210', 'password037', '345678'),
       ('mike@example.com', '3335557777', 'password194', '876543'),
       ('emily@example.com', '1234567890', 'password058', '234567');


SELECT users.users_id FROM users WHERE email = 'Fatemeh.Javdan@student.intecbrussel.be';


-- Update het wachtwoord van de 2e gebruiker
UPDATE users SET password = '2021' WHERE users.users_id = 2;

-- Selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'
SELECT * FROM users WHERE email LIKE 'Al%';


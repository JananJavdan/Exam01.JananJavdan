USE checkinoutdb;
CREATE TABLE IF NOT EXISTS event_log (
        event_id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT  ,
        event_date DATE NOT NULL,
        check_in_time TIME,
        check_out_time TIME,
        FOREIGN KEY (user_id) REFERENCES users(users_id)
);
SELECT DISTINCT user_id FROM event_log;

INSERT INTO event_log (user_id, event_date, check_in_time, check_out_time)
VALUES
    (1, '2024-03-03', '08:15:00', NULL),
    (2, '2024-03-03', NULL, '17:45:00'),
    (3, '2024-03-04', '08:30:00', NULL),
    (4, '2024-03-04', NULL, '16:15:00'),
    (5, '2024-03-05', '09:00:00', NULL),
    (6, '2024-03-05', NULL, '16:30:00'),
    (7, '2024-03-06', '08:45:00', NULL),
    (8, '2024-03-06', NULL, '17:00:00'),
    (9, '2024-03-07', '09:00:00', NULL),
    (10, '2024-03-07', NULL, '17:45:00'),
    (11, '2024-03-08', '08:30:00', NULL),
    (12, '2024-03-08', NULL, '17:30:00'),
    (13, '2024-03-09', '09:15:00', NULL),
    (14, '2024-03-09', NULL, '17:15:00'),
    (15, '2024-03-10', '08:45:00', NULL),
    (16, '2024-03-10', NULL, '17:30:00'),
    (17, '2024-03-11', '10:00:00', NULL),
    (18, '2024-03-11', NULL, '18:00:00'),
    (19, '2024-03-12', '08:30:00', NULL),
    (20, '2024-03-12', NULL, '16:45:00');


-- Selectiequery om logs van vandaag te zien
SELECT * FROM event_log WHERE event_date = CURDATE();

-- Selectiequery om uitchecken vóór 17:00 uur te zien
SELECT * FROM event_log WHERE check_out_time < '17:00:00';

-- Optionele selectiequery om alle logs te sorteren op evenementdatum
SELECT * FROM event_log ORDER BY event_date;










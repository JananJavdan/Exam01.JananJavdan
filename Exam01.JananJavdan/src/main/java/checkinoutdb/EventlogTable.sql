CREATE TABLE IF NOT EXISTS event_log (
        log_id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT,
        event_date DATE NOT NULL,
        check_in_time TIME,
        check_out_time TIME,
        FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Voeg 20 evenementen toe, inclusief in- en uitchecken met verschillende datums
INSERT INTO event_log (user_id, event_date, check_in_time, check_out_time)
VALUES
    (1, '2024-03-01', '08:00:00', NULL),
    (1, '2024-03-01', NULL, '17:30:00'),
    (2, '2024-03-02', '09:30:00', NULL),
    (2, '2024-03-02', NULL, '16:45:00');
    -- Voeg hier nog 16 evenementen toe met verschillende datums


-- Selectiequery om logs van vandaag te zien
SELECT * FROM event_log WHERE event_date = CURDATE();

-- Selectiequery om uitchecken vóór 17:00 uur te zien
SELECT * FROM event_log WHERE check_out_time < '17:00:00';

-- Optionele selectiequery om alle logs te sorteren op evenementdatum
SELECT * FROM event_log ORDER BY event_date;









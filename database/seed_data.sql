USE my_mysql;

-- Ubacivanje vremenskih slotova
INSERT INTO time_slots (start_time, end_time, type, price) 
VALUES 
('07:00', '07:15', 'drop_off', 10.00),
('07:15', '07:30', 'drop_off', 10.00),
('07:30', '07:45', 'drop_off', 10.00),
('07:45', '08:00', 'drop_off', 10.00),
('08:00', '08:15', 'drop_off', 10.00),
('08:15', '08:30', 'drop_off', 10.00),
('08:30', '08:45', 'drop_off', 10.00),
('08:45', '09:00', 'drop_off', 10.00),
('09:00', '09:15', 'drop_off', 10.00),
('09:15', '09:30', 'drop_off', 10.00);

-- Ubacivanje administratorskog naloga
INSERT INTO admins (username, password_hash, email) 
VALUES ('admin', '$2y$10$examplehashvaluehere', 'admin@example.com');

-- Postavljanje broja dostupnih parking mesta
INSERT INTO system_config (name, value) 
VALUES ('available_parking_slots', 7);
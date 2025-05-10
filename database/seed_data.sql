USE my_mysql;

-- Ubacivanje tipova vozila
INSERT INTO vehicle_types (type_name, description, price) VALUES
('Tip A', '8+1 mjesta (manji kombi)', 15.00),
('Tip B', '9-23 mjesta (mini bus)', 40.00),
('Tip C', '23+ mjesta (veliki autobus)', 50.00);

-- Ubacivanje vremenskih slotova
INSERT INTO time_slots (start_time, end_time, type, status) 
VALUES 
('07:00', '07:15', 'drop_off', 'available'),
('07:15', '07:30', 'drop_off', 'available'),
('07:30', '07:45', 'drop_off', 'available'),
('07:45', '08:00', 'drop_off', 'available'),
('08:00', '08:15', 'drop_off', 'available'),
('08:15', '08:30', 'drop_off', 'available');
('08:30', '08:45', 'drop_off', 'available'),
('08:45', '09:00', 'drop_off', 'available'),
('09:00', '09:15', 'drop_off', 'available'),
('09:15', '09:30', 'drop_off', 'available'),
('09:30', '09:45', 'drop_off', 'available'),
('09:45', '10:00', 'drop_off', 'available');
('10:00', '10:15', 'drop_off', 'available'),
('10:15', '10:30', 'drop_off', 'available'),
('10:30', '10:45', 'drop_off', 'available'),
('10:45', '11:00', 'drop_off', 'available'),
('11:00', '11:15', 'drop_off', 'available'),
('11:15', '11:30', 'drop_off', 'available');
('11:30', '11:45', 'drop_off', 'available'),
('11:45', '12:00', 'drop_off', 'available'),
('12:00', '12:15', 'drop_off', 'available'),
('12:15', '12:30', 'drop_off', 'available'),
('12:30', '12:45', 'drop_off', 'available'),
('12:45', '13:00', 'drop_off', 'available');
('13:00', '13:15', 'drop_off', 'available'),
('13:15', '13:30', 'drop_off', 'available'),
('13:30', '13:45', 'drop_off', 'available'),
('13:45', '14:00', 'drop_off', 'available'),
('14:00', '14:15', 'drop_off', 'available'),
('14:15', '14:30', 'drop_off', 'available');
('14:30', '14:45', 'drop_off', 'available'),
('14:45', '15:00', 'drop_off', 'available'),
('15:00', '15:15', 'drop_off', 'available'),
('15:15', '15:30', 'drop_off', 'available'),
('15:30', '15:45', 'drop_off', 'available'),
('15:45', '16:00', 'drop_off', 'available');
('16:00', '16:15', 'drop_off', 'available'),
('16:15', '16:30', 'drop_off', 'available'),
('16:30', '16:45', 'drop_off', 'available'),
('16:45', '17:00', 'drop_off', 'available'),
('17:00', '17:15', 'drop_off', 'available'),
('17:15', '17:30', 'drop_off', 'available');
('17:30', '17:45', 'drop_off', 'available'),
('17:45', '18:00', 'drop_off', 'available'),
('18:00', '18:15', 'drop_off', 'available'),
('18:15', '18:30', 'drop_off', 'available'),
('18:30', '18:45', 'drop_off', 'available'),
('18:45', '19:00', 'drop_off', 'available');
('19:00', '19:15', 'drop_off', 'available'),
('19:15', '19:30', 'drop_off', 'available'),
('19:30', '19:45', 'drop_off', 'available'),
('19:45', '20:00', 'drop_off', 'available');
('07:00', '07:15', 'pick_up', 'available'),
('07:15', '07:30', 'pick_up', 'available'),
('07:30', '07:45', 'pick_up', 'available'),
('07:45', '08:00', 'pick_up', 'available'),
('08:00', '08:15', 'pick_up', 'available'),
('08:15', '08:30', 'pick_up', 'available');
('08:30', '08:45', 'pick_up', 'available'),
('08:45', '09:00', 'pick_up', 'available'),
('09:00', '09:15', 'pick_up', 'available'),
('09:15', '09:30', 'pick_up', 'available'),
('09:30', '09:45', 'pick_up', 'available'),
('09:45', '10:00', 'pick_up', 'available');
('10:00', '10:15', 'pick_up', 'available'),
('10:15', '10:30', 'pick_up', 'available'),
('10:30', '10:45', 'pick_up', 'available'),
('10:45', '11:00', 'pick_up', 'available'),
('11:00', '11:15', 'pick_up', 'available'),
('11:15', '11:30', 'pick_up', 'available');
('11:30', '11:45', 'pick_up', 'available'),
('11:45', '12:00', 'pick_up', 'available'),
('12:00', '12:15', 'pick_up', 'available'),
('12:15', '12:30', 'pick_up', 'available'),
('12:30', '12:45', 'pick_up', 'available'),
('12:45', '13:00', 'pick_up', 'available');
('13:00', '13:15', 'pick_up', 'available'),
('13:15', '13:30', 'pick_up', 'available'),
('13:30', '13:45', 'pick_up', 'available'),
('13:45', '14:00', 'pick_up', 'available'),
('14:00', '14:15', 'pick_up', 'available'),
('14:15', '14:30', 'pick_up', 'available');
('14:30', '14:45', 'pick_up', 'available'),
('14:45', '15:00', 'pick_up', 'available'),
('15:00', '15:15', 'pick_up', 'available'),
('15:15', '15:30', 'pick_up', 'available'),
('15:30', '15:45', 'pick_up', 'available'),
('15:45', '16:00', 'pick_up', 'available');
('16:00', '16:15', 'pick_up', 'available'),
('16:15', '16:30', 'pick_up', 'available'),
('16:30', '16:45', 'pick_up', 'available'),
('16:45', '17:00', 'pick_up', 'available'),
('17:00', '17:15', 'pick_up', 'available'),
('17:15', '17:30', 'pick_up', 'available');
('17:30', '17:45', 'pick_up', 'available'),
('17:45', '18:00', 'pick_up', 'available'),
('18:00', '18:15', 'pick_up', 'available'),
('18:15', '18:30', 'pick_up', 'available'),
('18:30', '18:45', 'pick_up', 'available'),
('18:45', '19:00', 'pick_up', 'available');
('19:00', '19:15', 'pick_up', 'available'),
('19:15', '19:30', 'pick_up', 'available'),
('19:30', '19:45', 'pick_up', 'available'),
('19:45', '20:00', 'pick_up', 'available');

-- Ubacivanje administratorskog naloga
INSERT INTO admins (username, password_hash, email) 
VALUES ('admin', '$2y$10$examplehashvaluehere', 'admin@example.com');

-- Postavljanje broja dostupnih parking mesta
INSERT INTO system_config (name, value) 
VALUES ('available_parking_slots', 7);
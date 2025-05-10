-- Kreiranje baze podataka (ako ne postoji)
CREATE DATABASE IF NOT EXISTS my_mysql;
USE my_mysql;

-- Tabela za vremenske slotove
CREATE TABLE time_slots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    type ENUM('drop_off', 'pick_up') NOT NULL,
    status ENUM('available', 'full', 'unavailable') DEFAULT 'available',
    price DECIMAL(10, 2) NOT NULL
);

-- Tabela za rezervacije
CREATE TABLE reservations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    time_slot_id INT NOT NULL,
    reservation_date DATE NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    country VARCHAR(100) NOT NULL,
    license_plate VARCHAR(50) NOT NULL,
    vehicle_type VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    status ENUM('paid', 'pending') DEFAULT 'pending',
    FOREIGN KEY (time_slot_id) REFERENCES time_slots(id)
);

-- Tabela za administratorske naloge
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela za globalnu konfiguraciju
CREATE TABLE system_config (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    value INT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
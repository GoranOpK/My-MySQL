USE my_mysql;

-- 1. Dodavanje administratorskog naloga u tabelu admins
INSERT INTO admins (username, password_hash, email) 
VALUES ('admin', PASSWORD('secure_password'), 'admin@example.com')
ON DUPLICATE KEY UPDATE 
    password_hash = PASSWORD('secure_password'),
    email = 'admin@example.com';

-- 2. Dodeljivanje svih privilegija za administratorski nalog
GRANT ALL PRIVILEGES ON my_mysql.* TO 'admin'@'%' IDENTIFIED BY 'secure_password';

-- 3. Primeni promene u privilegijama
FLUSH PRIVILEGES;
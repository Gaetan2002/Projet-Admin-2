CREATE DATABASE IF NOT EXISTS site_db;

CREATE USER IF NOT EXISTS 'site_user'@'192.168.0.11' IDENTIFIED BY 'site_password';

GRANT ALL PRIVILEGES ON site_db.* TO 'site_user'@'192.168.0.11';

FLUSH PRIVILEGES;

USE site_db;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO users (name, email) VALUES
('First Site', 'First.site@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Julien Pollart', 'example@example.com'),
('Samuel Lambert', 'bonjour@example.com');

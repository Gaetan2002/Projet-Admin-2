CREATE DATABASE IF NOT EXISTS site3_db;

CREATE USER IF NOT EXISTS 'site3_user'@'172.20.0.11' IDENTIFIED BY 'site3_password';

GRANT ALL PRIVILEGES ON site3_db.* TO 'site3_user'@'172.20.0.11';

FLUSH PRIVILEGES;

USE site3_db;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO users (name, email) VALUES
('Third Site', 'third.site@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Julien Pollart', 'example@example.com'),
('Samuel Lambert', 'bonjour@example.com');

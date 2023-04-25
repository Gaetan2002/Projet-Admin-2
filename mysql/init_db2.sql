CREATE DATABASE IF NOT EXISTS site2_db;

CREATE USER IF NOT EXISTS 'site2_user'@'172.20.0.11' IDENTIFIED BY 'site2_password';

GRANT ALL PRIVILEGES ON site2_db.* TO 'site2_user'@'172.20.0.11';

FLUSH PRIVILEGES;

USE site2_db;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO users (name, email) VALUES
('Second Site', 'second.site@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Julien Pollart', 'example@example.com'),
('Samuel Lambert', 'bonjour@example.com');

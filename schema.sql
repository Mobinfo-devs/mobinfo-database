--@block
CREATE DATABASE IF NOT EXISTS quoteslection;

-- @block
CREATE TABLE user (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(20) UNIQUE NOT NULL,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
password_hash VARCHAR(255) NOT NULL,
is_admin BOOLEAN NOT NULL
);

-- @BLOCK
CREATE TABLE brand (
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(1000) NOT NULL,
    logo_url VARCHAR(500)
);
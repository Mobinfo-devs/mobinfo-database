--@block
CREATE DATABASE IF NOT EXISTS quoteslection;

-- @block
CREATE TABLE user (
username VARCHAR(30) PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
password_hash VARCHAR(255) NOT NULL,
is_admin BOOLEAN NOT NULL
);

--@block
CREATE TABLE favourite (
    phone_id INT UNSIGNED,
    username VARCHAR(30),
    FOREIGN KEY (phone_id) REFERENCES phone(id),
    FOREIGN KEY (username) REFERENCES user(username)
);

-- @block
CREATE TABLE review (
    review_text VARCHAR(255) ,
    rating INT UNSIGNED NOT NULL,
    submission_date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    phone_id INT UNSIGNED,
    username VARCHAR(30),
    FOREIGN KEY (phone_id) REFERENCES phone(id),
    FOREIGN KEY (username) REFERENCES user(username)
);


-- @BLOCK
CREATE TABLE brand (
    name VARCHAR(30) PRIMARY KEY,
    description VARCHAR(1000) NOT NULL,
    logo_url VARCHAR(500)
);

--@block
CREATE TABLE marketshare (
    brand_name VARCHAR(30),
    share_percentage INT UNSIGNED,
    year INT UNSIGNED NOT NULL,
    quarter INT UNSIGNED NOT NULL,
    FOREIGN KEY (brand_name) REFERENCES brand(name)
);

--@block
CREATE TABLE phone (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(30),
    name VARCHAR(100) NOT NULL,
    image_url VARCHAR(500),
    price_rupees INT UNSIGNED,
    FOREIGN KEY (brand_name) REFERENCES brand(name)
);
--@block
CREATE TABLE specification (
    phone_id INT UNSIGNED,
    os VARCHAR(30),
    weight_grams INT UNSIGNED,
    cpu VARCHAR(255),
    chipset VARCHAR(255),
    display_technology VARCHAR(255),
    screen_size_inches INT UNSIGNED,
    display_resoluition VARCHAR(10),
    extra_display_features VARCHAR(255),
    built_in_memory VARCHAR(10),
    ram VARCHAR(10),
    battery_capacity_mah INT UNSIGNED,
    battery_features VARCHAR(255),
    FOREIGN KEY (phone_id) REFERENCES phone(id)
);

--@block
CREATE TABLE color (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(30)
);

--@block
CREATE TABLE phone_color (
    phone_id INT UNSIGNED,
    color_id INT UNSIGNED,
    FOREIGN KEY (phone_id) REFERENCES color(id),
    FOREIGN KEY (color_id) REFERENCES color(id)
);

--@block
CREATE TABLE sensor (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    sensor_name VARCHAR(30)
);

--@block
CREATE TABLE phone_sensor(
    sensor_id INT UNSIGNED,
    phone_id INT UNSIGNED,
    FOREIGN KEY (phone_id) REFERENCES color(id),
    FOREIGN KEY (sensor_id) REFERENCES sensor(id)
);



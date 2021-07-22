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
-- battery features column dropped later

--@block
CREATE TABLE color (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(30)
);

--@block
CREATE TABLE phone_color (
    phone_id INT UNSIGNED,
    color_id INT UNSIGNED,
    FOREIGN KEY (phone_id) REFERENCES phone(id),
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
    FOREIGN KEY (phone_id) REFERENCES phone(id),
    FOREIGN KEY (sensor_id) REFERENCES sensor(id)
);


--@block
CREATE TABLE camera (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    mega_pixels INT UNSIGNED NOT NULL,
    type VARCHAR(10),  -- eg: ultrawide, macro
    location VARCHAR(5) NOT NULL -- "front or rear"
)


--@block
CREATE TABLE phone_camera (
    phone_id INT UNSIGNED,
    camera_id INT UNSIGNED,
    FOREIGN KEY (phone_id) REFERENCES phone(id),
    FOREIGN KEY (camera_id) REFERENCES camera(id)
);


--@block
CREATE TABLE news (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    heading VARCHAR(255) NOT NULL,
    image_url VARCHAR(500),
    news_text VARCHAR(1024) NOT NULL
);


--@block
ALTER TABLE specification
DROP COLUMN battery_features;

--@BLOCK
ALTER TABLE specification
DROP COLUMN display_resoluition;

ALTER TABLE specification
ADD COLUMN display_resolution VARCHAR(50)
AFTER screen_size_inches;

--@block
ALTER TABLE specification
MODIFY COLUMN screen_size_inches FLOAT;

--@block;
ALTER TABLE camera RENAME COLUMN mega_pixels TO megapixels;



--- test selects
--@block
SELECT brand_name, name, sensor_name
FROM 
    phone JOIN phone_sensor ON phone.id = phone_sensor.phone_id
    JOIN sensor ON phone_sensor.sensor_id = sensor.id;

--@block
SELECT phone.brand_name, phone.name, camera.megapixels, camera.type
FROM 
    phone JOIN phone_camera ON phone.id = phone_camera.phone_id
    JOIN camera ON phone_camera.camera_id = camera.id
WHERE
	location = "rear";


--@block
ALTER TABLE camera
DROP COLUMN type;

--@block
ALTER TABLE phone
DROP COLUMN price_rupees;

ALTER TABLE specification
ADD COLUMN price_rupees INT UNSIGNED;


--@block
ALTER TABLE specification
MODIFY COLUMN built_in_memory INT UNSIGNED;
ALTER TABLE specification
MODIFY COLUMN ram INT UNSIGNED;

ALTER TABLE specification 
RENAME COLUMN built_in_memory TO built_in_memory_GB;
ALTER TABLE specification 
RENAME COLUMN ram TO ram_GB;

--@block
ALTER TABLE specification
MODIFY COLUMN os VARCHAR(100);


-- @block 
-- moving specs to phone table and deleting specification table
ALTER TABLE phone 
ADD COLUMN os VARCHAR(100),
ADD COLUMN weight_grams INT UNSIGNED,
ADD COLUMN cpu VARCHAR(255),
ADD COLUMN chipset VARCHAR(255),
ADD COLUMN display_technology VARCHAR(255),
ADD COLUMN screen_size_inches FLOAT,
ADD COLUMN display_resolution VARCHAR(50),
ADD COLUMN extra_display_features VARCHAR(255),
ADD COLUMN built_in_memory_GB INT UNSIGNED,
ADD COLUMN ram_GB INT UNSIGNED,
ADD COLUMN battery_capacity_mah INT UNSIGNED;

DROP TABLE specification;

--@block
ALTER TABLE phone
ADD COLUMN price_rupees INT UNSIGNED;

--@block
ALTER TABLE brand
MODIFY COLUMN description TEXT;
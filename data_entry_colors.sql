INSERT INTO color (color_name)
VALUES ("Blue"), ("White"), ("Gray"), ("Gold"),("Violet");

INSERT INTO phone_color (phone_id, color_id)
VALUES (3, 1), (3, 2), (3, 3), (3, 4), (3, 5);


--@block
DELETE FROM phone_color;

--@block
DELETE FROM color;

--@block
ALTER TABLE color AUTO_INCREMENT = 1;
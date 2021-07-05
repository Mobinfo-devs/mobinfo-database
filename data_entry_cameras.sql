--@block
INSERT INTO camera (mega_pixels, type, location)
VALUES 
    (108, "wide", "rear"),
    (13, "ultrawide", "rear"),
    (5, "macro", "rear"),
    (20, "wide", "front");

INSERT INTO phone_camera (phone_id, camera_id)
VALUES (3, 1), (3, 2), (3, 3), (3, 4);

--@block
INSERT INTO camera (megapixels, type, location)
VALUES 
    (48, "wide", "rear"),
    (8, "ultrawide", "rear");

    
--@block
INSERT INTO phone_camera (phone_id, camera_id)
VALUES (4, 5), (4, 6), (4, 3), (4, 4);


--@block
DELETE FROM phone_camera;
DELETE FROM camera;


--@block
ALTER TABLE camera AUTO_INCREMENT = 1;
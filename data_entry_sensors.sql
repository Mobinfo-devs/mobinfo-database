--@block
INSERT INTO sensor (sensor_name)
VALUES ("Accelerometer"), ("Compass"), ("Fingerprint"), ("Gyro"), ("Proximity");

INSERT INTO phone_sensor (phone_id, sensor_id)
VALUES (3, 1), (3, 2), (3, 3), (3, 4), (3, 5);

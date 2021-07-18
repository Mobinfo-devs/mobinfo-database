--@block
INSERT INTO brand
(name, description)
VALUES
("Samsung", "Korean company");

--@block
INSERT INTO brand
    (name, description)
VALUES
    ("Xiaomi", "Chinese company"),
    ("Apple", "American company"),
    ("Realme", "ChingCHong company"),
    ("Huawei", "banned chinese company");


-- adding logo image urls
--@block
UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2016/05/Xiaomi_Logo_2021.svg"
WHERE name = "Xiaomi";

UPDATE brand
SET logo_url = "https://www.kindpng.com/picc/m/199-1996327_logo-huawei-hd-png-download.png"
WHERE name = "Huawei";

UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2016/02/Samsung_Logo_2005.svg"
WHERE name = "Samsung";

UPDATE brand
SET logo_url = "https://image01.realme.net/general/20181116/1542370418184.jpg"
WHERE name = "Realme";

UPDATE brand
SET logo_url = "https://logos-download.com/wp-content/uploads/2017/07/Apple_Logo_1998.svg"
WHERE name = "Apple";




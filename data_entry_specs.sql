INSERT INTO specification
    (phone_id,
    os,
    weight_grams,
    cpu,
    chipset,
    display_technology,
    screen_size_inches,
    display_resolution,
    extra_display_features,
    built_in_memory,
    ram,
    battery_capacity_mah)
VALUES
    (
        3, 
        "Android 11 OS, MIUI 12", 
        196,
        "Octa-core (1 x 2.84 GHz Kryo 680 + 3 x 2.42 GHz Kryo 680 + 4 x 1.80 GHz Kryo 680",
        "Qualcomm SM8350 Snapdragon 888 (5 nm)",
        "AMOLED Capacitive Touchscreen, 1B Colors, Multitouch",
        6.81,
        "1440 x 3200 Pixels (~515 PPI)",
        "120Hz, HDR10+, 1500 nits (peak)",
        256, 
        8,
        4600
    );

--@block
UPDATE specification
SET screen_size_inches = 6.81
WHERE phone_id = 3;




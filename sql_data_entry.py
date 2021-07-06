from numpy.lib.shape_base import column_stack
import pandas as pd
from numpy import nan
from os import getenv
import mysql.connector


db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password=getenv("MySQLpassword"),
    database="mobinfo"
)

db = db_connection.cursor(buffered=True)

df = pd.read_csv("CleanedUp.csv")

df = df.where(pd.notnull(df), None)


for i in range(len(df)):
    row = df.iloc[i]

    phone_name = row["name"]
    brand_name = row["brand_name"]

    # Entry into table phone
    db.execute("""
    INSERT INTO phone (brand_name, name)
    VALUES (%s, %s);
    """,
               (brand_name, phone_name)
    )
    db_connection.commit()

    # get phone id from database
    db.execute("""
        SELECT id FROM phone
        WHERE brand_name = %s AND name = %s;
        """, (brand_name, phone_name)
    )
    phone_id = db.fetchone()[0]


    # Entry into specification table
    db.execute("""
    INSERT INTO specification
    (phone_id, os, weight_grams, cpu, chipset, display_technology, screen_size_inches,
    display_resolution, extra_display_features, built_in_memory_GB, ram_GB, battery_capacity_mah, price_rupees)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);
    """,
    (phone_id, row["os"], int(row["weight_grams"]), row["cpu"], row["chipset"], row["display_technology"], float(row["screen_size_inches"]), 
    row["display_resolution"], row["extra_display_features"], int(row["built_in_memory"]), int(row["ram"]), int(row["battery_capacity_mah"]), int(row["price_rupees"]) )
    )
    db_connection.commit()


    # inserting colors
    colors = eval(row["colors"])
    # Check if color exists, if not insert it
    for color in colors:
        db.execute("""
            SELECT id FROM color
            WHERE color_name = %s;
            """, (color, ))
        result = db.fetchone()

        if not result:
            # insert color
            db.execute("""
            INSERT INTO color (color_name)
            VALUES (%s);
            """,
                    (color, )
            )
            db_connection.commit()
        
            # get color id from database
            db.execute("""
            SELECT id FROM color
            WHERE color_name = %s;
            """, (color, ) )
            result = db.fetchone()

        color_id = result[0]

        # insert into phone_color
        db.execute("""
            INSERT INTO phone_color
            (phone_id, color_id)
            VALUES (%s, %s);
            """,
                    (phone_id, color_id)
            )
        db_connection.commit()



    # inserting sensors
    sensors = eval(row["sensors"])
    # Check if sensor exists, if not insert it
    for sensor in sensors:
        db.execute("""
            SELECT id FROM sensor
            WHERE sensor_name = %s;
            """, (sensor, ) )
        result = db.fetchone()

        if not result:
            # insert sensor
            db.execute("""
            INSERT INTO sensor (sensor_name)
            VALUES (%s);
            """,
                    (sensor, )
            )
            db_connection.commit()
        
            db.execute("""
            SELECT id FROM sensor
            WHERE sensor_name = %s;
            """, (sensor, ) )
            result = db.fetchone()

        sensor_id = result[0]

        # insert into phone_sensor
        db.execute("""
            INSERT INTO phone_sensor (phone_id, sensor_id)
            VALUES (%s, %s);
            """,
                    (phone_id, sensor_id)
            )
        db_connection.commit()


    # inserting cameras
    rear_cameras = eval(row["rear_cameras"])
    front_cameras = eval(row["front_cameras"])
    for camera_mp in rear_cameras:
        # Check if camera exists, if not insert it
        db.execute("""
            SELECT id FROM camera
            WHERE megapixels = %s and location = %s;
            """, (camera_mp, "rear"))
        result = db.fetchone()

        if not result:
            # insert rear camera
            db.execute("""
            INSERT INTO camera (megapixels, location)
            VALUES (%s, %s);
            """,
                    (camera_mp, "rear")
            )
            db_connection.commit()
        
            db.execute("""
            SELECT id FROM camera
            WHERE megapixels = %s and location = %s;
            """, (camera_mp, "rear"))
            result = db.fetchone()

        camera_id = result[0]

        # insert into phone_camera
        db.execute("""
            INSERT INTO phone_camera (phone_id, camera_id)
            VALUES (%s, %s);
            """,
                    (phone_id, camera_id)
            )
        db_connection.commit()

    for camera_mp in front_cameras:
        # Check if camera exists, if not insert it
        db.execute("""
            SELECT id FROM camera
            WHERE megapixels = %s and location = %s;
            """, (camera_mp, "front") )
        result = db.fetchone()

        if not result:
            # insert front camera
            db.execute("""
            INSERT INTO camera (megapixels, location)
            VALUES (%s, %s);
            """,
                    (camera_mp, "front")
            )
            db_connection.commit()
        
            db.execute("""
            SELECT id FROM camera
            WHERE megapixels = %s and location = %s;
            """, (camera_mp, "front") )
            result = db.fetchone()

        camera_id = result[0]

        # insert into phone_camera
        db.execute("""
            INSERT INTO phone_camera (phone_id, camera_id)
            VALUES (%s, %s);
            """,
                    (phone_id, camera_id)
            )
        db_connection.commit()
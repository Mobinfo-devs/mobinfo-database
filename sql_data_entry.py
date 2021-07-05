import pandas as pd

from os import getenv
import mysql.connector



db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password=getenv("MySQLpassword"),
    database="mobinfo"
)

db = db_connection.cursor()

df = pd.read_csv("CleanedUp.csv")


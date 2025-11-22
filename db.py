import mysql.connector

def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="1234",      # your MySQL password
        database="new_project"
    )
print("conenct is successfull")
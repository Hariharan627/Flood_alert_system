from db import get_connection
from sms import send_message

def check_dams():
    db = get_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM dams")
    dams = cursor.fetchall()

    for dam in dams:
        if dam["current_level"] >= dam["alert_threshold"]:
            print(f"ALERT: {dam['dam_name']} is reaching full capacity!")
            send_alerts(dam["dam_id"], dam["dam_name"])

    db.close()


def send_alerts(dam_id, dam_name):
    db = get_connection()
    cursor = db.cursor(dictionary=True)

    cursor.execute("SELECT * FROM peoples WHERE dam_id = %s", (dam_id,))
    peoples = cursor.fetchall()

    for person in peoples:
        message = (
            f"⚠️ Flood Alert!\n"
            f"{dam_name} dam water level is very high.\n"
            f"Stay alert and follow safety instructions.\n"
            "- Government Alert System"
        )

        send_message(person["mobile"], message)

    db.close()

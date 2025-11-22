import pywhatkit
import time

def send_message(mobile, message):
    print(f"Sending WhatsApp message to {9025169915}...")

    pywhatkit.sendwhatmsg_instantly(
        f"+91{9025169915}",
        message,
        wait_time=15,
        tab_close=True
    )

    time.sleep(5)

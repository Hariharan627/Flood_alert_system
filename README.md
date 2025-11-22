# Flood_alert_system
Chennai Flood Alert is a Python + MySQL–based real-time flood warning system that monitors dam water levels and sends instant WhatsApp alerts to nearby residents when levels reach danger limits. Designed to help prevent Chennai flood disasters through early alerts and automated safety notifications.
🌧️ Chennai Flood Alert – HumanAid Edition
A Community Early-Warning System to Save Lives During Floods
Chennai Flood Alert (HumanAid) is a simple but powerful project built using Python + MySQL to help people stay safe during heavy rains and floods.
It monitors dam water levels in Chennai and automatically sends WhatsApp warnings to nearby residents when water reaches a danger level.
This system aims to reduce loss of life, protect families, and give communities enough time to prepare before floods.

❤️ Why This Project?
Chennai has faced major floods (2015, 2021, 2023).
Most people did not receive early alerts.
This project solves that by sending immediate warnings to residents living near dams and flood-prone areas.

🚨 What the System Does


Tracks water levels of major Chennai-area dams


Detects when water reaches risky levels


Sends instant WhatsApp alerts to people living nearby


Warns families to stay safe, move to higher ground, and prepare


Works automatically and can save thousands of lives



🌍 Who Can Use It?


Residents in flood-prone zones


NGOs


Disaster management teams


Local communities


Volunteers


Small town / district officers


Anyone who wants to protect their people before it's too late.

🛠️ How It Works (Simple Explanation)


Dam details are stored in a MySQL database


Python script checks water levels every few minutes


If levels are dangerous:


It fetches phone numbers of nearby residents


Sends a WhatsApp alert like:




⚠️ Chennai Flood Alert!
The dam near your area is reaching danger level.
Please stay alert and follow emergency safety steps.



People receive warnings early → have time to save themselves and their families.



🧡 Technology Used


Python – logic & alerts


MySQL – storing dams and resident data


PyWhatKit – sending WhatsApp messages


mysql.connector – database connection



🏠 Real Impact
This system can help:


Evacuate people earlier


Avoid panic situations


Protect elderly & children


Reduce property damage


Save lives during heavy rainfall



🗂️ Project Files
db.py              - Connects to MySQL
sms.py             - Sends WhatsApp alerts
alert_system.py    - Checks dam levels & triggers alerts
main.py            - Runs the entire system


🚀 Future Goals


Add SMS alerts


Add voice call alerts


Connect to live government APIs


Build a mobile app


Show real-time dam dashboard


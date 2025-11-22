
create database new_project;
use new_project;
CREATE TABLE dams (
  dam_id INT PRIMARY KEY,
  dam_name VARCHAR(100),
  max_capacity INT,
  current_level INT,
  alert_threshold INT,
  last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


Create table Flood_alert (
dam_id INT primary key,
dam_name varchar(40),
max_capacity INT,
current_level INT,
alert_thread INT,
Last_updated int
);
Select * FRom Flood_alert;
Create Table Peoples
(
person_id INT primary key,
name varchar(30),
mobile varchar(15),
location varchar(30),
dam_id int,
foreign key (dam_id) references Flood_alert(dam_id)
);

CREATE TABLE peoples (
  person_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  mobile VARCHAR(15),
  location VARCHAR(100),
  dam_id INT,
  last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (dam_id) REFERENCES dams(dam_id)
);

INSERT INTO Flood_alert (dam_id, dam_name, max_capacity, current_level, alert_thread, last_updated) VALUES
(1, 'Chembarambakkam', 3645, 3100, 3300, NOW()),
(2, 'Poondi Reservoir', 3231, 2800, 3000, NOW()),
(3, 'Red Hills Reservoir', 3300, 2900, 3100, NOW()),
(4, 'Cholavaram Lake', 1100, 950, 1000, NOW()),
(5, 'Puzhal Lake', 3300, 2700, 3000, NOW()),
(6, 'Veeranam Lake', 1470, 1200, 1300, NOW()),
(7, 'Mettur Dam', 9300, 8500, 9000, NOW()),
(8, 'Bhavani Sagar Dam', 8400, 7200, 8000, NOW()),
(9, 'Sathanur Dam', 7321, 6800, 7000, NOW()),
(10, 'Amaravathi Dam', 4220, 3600, 4000, NOW()),
(11, 'Krishnagiri Dam', 5200, 4600, 4900, NOW()),
(12, 'Hogenakkal Barrage', 2500, 1800, 2200, NOW()),
(13, 'Vaigai Dam', 6300, 5500, 6000, NOW()),
(14, 'Manimuthar Dam', 6600, 5900, 6200, NOW()),
(15, 'Pechiparai Dam', 5340, 4800, 5000, NOW()),
(16, 'Perunchani Dam', 5180, 4500, 4900, NOW()),
(17, 'Sholayar Dam', 8300, 7800, 8200, NOW()),
(18, 'Parambikulam Dam', 7445, 6800, 7200, NOW()),
(19, 'Aliyar Dam', 3200, 2900, 3100, NOW()),
(20, 'Kodayar Dam', 6550, 6200, 6400, NOW());
ALTER TABLE Flood_alert
MODIFY COLUMN last_updated TIMESTAMP;
select * from flood_alert limit 10;
INSERT INTO peoples (person_id, name, mobile, location, dam_id, last_updated) VALUES
(41, 'Hari', '9025761626', 'Chembarambakkam Area', 1, NOW()),
(42, 'Hari', '9025761626', 'Poondi Area', 2, NOW()),
(43, 'Hari', '9025761626', 'Red Hills Area', 3, NOW()),
(44, 'Hari', '9025761626', 'Cholavaram Area', 4, NOW()),
(45, 'Hari', '9025761626', 'Puzhal Area', 5, NOW()),
(46, 'Hari', '9025761626', 'Veeranam Area', 6, NOW()),
(47, 'Hari', '9025761626', 'Mettur Area', 7, NOW()),
(48, 'Hari', '9025761626', 'Bhavani Sagar Area', 8, NOW()),
(49, 'Hari', '9025761626', 'Sathanur Area', 9, NOW()),
(50, 'Hari', '9025761626', 'Amaravathi Area', 10, NOW()),
(51, 'Hari', '9025761626', 'Krishnagiri Area', 11, NOW()),
(52, 'Hari', '9025761626', 'Hogenakkal Area', 12, NOW()),
(53, 'Hari', '9025761626', 'Vaigai Area', 13, NOW()),
(54, 'Hari', '9025761626', 'Manimuthar Area', 14, NOW()),
(55, 'Hari', '9025761626', 'Pechiparai Area', 15, NOW()),
(56, 'Hari', '9025761626', 'Perunchani Area', 16, NOW()),
(57, 'Hari', '9025761626', 'Sholayar Area', 17, NOW()),
(58, 'Hari', '9025761626', 'Parambikulam Area', 18, NOW()),
(59, 'Hari', '9025761626', 'Aliyar Area', 19, NOW()),
(60, 'Hari', '9025761626', 'Kodayar Area', 20, NOW());

alter table Peoples add column last_updated timestamp default current_timestamp on update current_timestamp;

select * from peoples;
use new_project;
UPDATE dams SET current_level = 99 WHERE dam_id = 1;

ALTER TABLE peoples
ADD COLUMN mobile VARCHAR(15);

INSERT INTO peoples (name, area, dam_id, mobile)
VALUES ("Hari", "Chennai - Tambaram", 1, "9025761626");

INSERT INTO peoples (person_id, name, mobile, location, dam_id, last_updated)
VALUES (90, 'Hariharan', '9025169915', 'Tambaram, Chennai', 1, CURRENT_TIMESTAMP);


UPDATE dams
SET current_level = alert_threshold + 1
WHERE dam_id = 90;
UPDATE dams
SET current_level = alert_threshold + 1
WHERE dam_id = 1;
select * from dams where dam_id=1;

UPDATE dams
SET current_level = alert_threshold - 1
WHERE dam_id = 1;






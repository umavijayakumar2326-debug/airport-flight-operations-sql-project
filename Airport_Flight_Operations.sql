-- =============================================================
-- PROJECT: Airport Flight Operations & Delay Management System
-- =============================================================
CREATE DATABASE airport_flight_management;
USE airport_flight_management;

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(20),
    airline VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50),
    aircraft_type VARCHAR(30)
);
INSERT INTO flights
(flight_id, flight_number, airline, source, destination, aircraft_type)
VALUES
(101, 'AI201', 'Air India', 'Chennai', 'Delhi', 'A320'),
(102, 'AI202', 'Air India', 'Delhi', 'Chennai', 'A320'),
(103, 'AI305', 'Air India', 'Chennai', 'Mumbai', 'A321'),
(104, 'AI306', 'Air India', 'Mumbai', 'Chennai', 'A321'),
(105, 'AI410', 'Air India', 'Chennai', 'Bangalore', 'A320'),
(106, 'AI411', 'Air India', 'Bangalore', 'Chennai', 'A320'),
(107, 'AI520', 'Air India', 'Chennai', 'Kolkata', 'B787'),
(108, 'AI521', 'Air India', 'Kolkata', 'Chennai', 'B787'),
(109, 'AI630', 'Air India', 'Chennai', 'Hyderabad', 'A320'),
(110, 'AI631', 'Air India', 'Hyderabad', 'Chennai', 'A320'),

(111, '6E301', 'IndiGo', 'Chennai', 'Delhi', 'A320'),
(112, '6E302', 'IndiGo', 'Delhi', 'Chennai', 'A320'),
(113, '6E405', 'IndiGo', 'Chennai', 'Mumbai', 'A321'),
(114, '6E406', 'IndiGo', 'Mumbai', 'Chennai', 'A321'),
(115, '6E510', 'IndiGo', 'Chennai', 'Bangalore', 'A320'),
(116, '6E511', 'IndiGo', 'Bangalore', 'Chennai', 'A320'),
(117, '6E620', 'IndiGo', 'Chennai', 'Kolkata', 'A320'),
(118, '6E621', 'IndiGo', 'Kolkata', 'Chennai', 'A320'),
(119, '6E730', 'IndiGo', 'Chennai', 'Hyderabad', 'A321'),
(120, '6E731', 'IndiGo', 'Hyderabad', 'Chennai', 'A321'),

(121, 'SG201', 'SpiceJet', 'Chennai', 'Delhi', 'B737'),
(122, 'SG202', 'SpiceJet', 'Delhi', 'Chennai', 'B737'),
(123, 'SG305', 'SpiceJet', 'Chennai', 'Mumbai', 'B737'),
(124, 'SG306', 'SpiceJet', 'Mumbai', 'Chennai', 'B737'),
(125, 'SG410', 'SpiceJet', 'Chennai', 'Bangalore', 'B737'),
(126, 'SG411', 'SpiceJet', 'Bangalore', 'Chennai', 'B737'),
(127, 'SG520', 'SpiceJet', 'Chennai', 'Kolkata', 'B737'),
(128, 'SG521', 'SpiceJet', 'Kolkata', 'Chennai', 'B737'),
(129, 'SG630', 'SpiceJet', 'Chennai', 'Hyderabad', 'B737'),
(130, 'SG631', 'SpiceJet', 'Hyderabad', 'Chennai', 'B737'),

(131, 'UK201', 'Vistara', 'Chennai', 'Delhi', 'A321'),
(132, 'UK202', 'Vistara', 'Delhi', 'Chennai', 'A321'),
(133, 'UK305', 'Vistara', 'Chennai', 'Mumbai', 'A321'),
(134, 'UK306', 'Vistara', 'Mumbai', 'Chennai', 'A321'),
(135, 'UK410', 'Vistara', 'Chennai', 'Bangalore', 'A320'),
(136, 'UK411', 'Vistara', 'Bangalore', 'Chennai', 'A320'),
(137, 'UK520', 'Vistara', 'Chennai', 'Kolkata', 'A321'),
(138, 'UK521', 'Vistara', 'Kolkata', 'Chennai', 'A321'),
(139, 'UK630', 'Vistara', 'Chennai', 'Hyderabad', 'A320'),
(140, 'UK631', 'Vistara', 'Hyderabad', 'Chennai', 'A320'),

(141, 'IX201', 'Air India Express', 'Chennai', 'Delhi', 'B737'),
(142, 'IX202', 'Air India Express', 'Delhi', 'Chennai', 'B737'),
(143, 'IX305', 'Air India Express', 'Chennai', 'Mumbai', 'B737'),
(144, 'IX306', 'Air India Express', 'Mumbai', 'Chennai', 'B737'),
(145, 'IX410', 'Air India Express', 'Chennai', 'Bangalore', 'B737'),
(146, 'IX411', 'Air India Express', 'Bangalore', 'Chennai', 'B737'),
(147, 'IX520', 'Air India Express', 'Chennai', 'Kolkata', 'B737'),
(148, 'IX521', 'Air India Express', 'Kolkata', 'Chennai', 'B737'),
(149, 'IX630', 'Air India Express', 'Chennai', 'Hyderabad', 'B737'),
(150, 'IX631', 'Air India Express', 'Hyderabad', 'Chennai', 'B737'),

(151, 'QP201', 'Akasa Air', 'Chennai', 'Delhi', 'B737'),
(152, 'QP202', 'Akasa Air', 'Delhi', 'Chennai', 'B737'),
(153, 'QP305', 'Akasa Air', 'Chennai', 'Mumbai', 'B737'),
(154, 'QP306', 'Akasa Air', 'Mumbai', 'Chennai', 'B737'),
(155, 'QP410', 'Akasa Air', 'Chennai', 'Bangalore', 'B737'),
(156, 'QP411', 'Akasa Air', 'Bangalore', 'Chennai', 'B737'),
(157, 'QP520', 'Akasa Air', 'Chennai', 'Kolkata', 'B737'),
(158, 'QP521', 'Akasa Air', 'Kolkata', 'Chennai', 'B737'),
(159, 'QP630', 'Akasa Air', 'Chennai', 'Hyderabad', 'B737'),
(160, 'QP631', 'Akasa Air', 'Hyderabad', 'Chennai', 'B737');

SELECT * FROM flights;

CREATE TABLE flight_operations (
    operation_id INT PRIMARY KEY,
    flight_id INT,
    flight_date DATE,
    scheduled_departure TIME,
    actual_departure TIME,
    scheduled_arrival TIME,
    actual_arrival TIME,
    delay_minutes INT,
    status VARCHAR(20),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);
INSERT INTO flight_operations
(operation_id, flight_id, flight_date, scheduled_departure, actual_departure,
 scheduled_arrival, actual_arrival, delay_minutes, status)
VALUES

(1,101,'2026-09-01','06:00:00','06:10:00','08:50:00','09:00:00',10,'Delayed'),
(2,101,'2026-09-05','06:00:00','06:25:00','08:50:00','09:18:00',25,'Delayed'),

(3,102,'2026-09-01','09:00:00','09:00:00','11:50:00','11:45:00',0,'On Time'),
(4,102,'2026-09-05','09:00:00','09:12:00','11:50:00','12:05:00',12,'Delayed'),

(5,103,'2026-09-02','07:30:00','07:45:00','10:20:00','10:35:00',15,'Delayed'),
(6,103,'2026-09-06','07:30:00','08:10:00','10:20:00','11:00:00',40,'Delayed'),

(7,104,'2026-09-02','11:00:00','11:00:00','13:50:00','13:45:00',0,'On Time'),
(8,104,'2026-09-06','11:00:00','11:20:00','13:50:00','14:10:00',20,'Delayed'),

(9,105,'2026-09-03','06:30:00','06:35:00','07:45:00','07:50:00',5,'Delayed'),
(10,105,'2026-09-07','06:30:00','06:30:00','07:45:00','07:40:00',0,'On Time'),

(11,106,'2026-09-03','08:30:00','08:50:00','09:45:00','10:05:00',20,'Delayed'),
(12,106,'2026-09-07','08:30:00','08:35:00','09:45:00','09:55:00',5,'Delayed'),

(13,107,'2026-09-04','10:00:00','10:35:00','12:40:00','13:15:00',35,'Delayed'),
(14,107,'2026-09-08','10:00:00','10:15:00','12:40:00','13:00:00',15,'Delayed'),

(15,108,'2026-09-04','14:00:00','14:00:00','16:40:00','16:35:00',0,'On Time'),
(16,108,'2026-09-08','14:00:00','14:45:00','16:40:00','17:25:00',45,'Delayed'),

(17,109,'2026-09-05','16:00:00','16:10:00','17:20:00','17:30:00',10,'Delayed'),
(18,109,'2026-09-09','16:00:00','16:05:00','17:20:00','17:25:00',5,'Delayed'),

(19,110,'2026-09-05','19:00:00','19:30:00','20:20:00','20:50:00',30,'Delayed'),
(20,110,'2026-09-09','19:00:00','19:00:00','20:20:00','20:15:00',0,'On Time'),

(21,111,'2026-09-01','07:00:00','07:05:00','09:50:00','09:55:00',5,'Delayed'),
(22,111,'2026-09-10','07:00:00','07:25:00','09:50:00','10:15:00',25,'Delayed'),

(23,112,'2026-09-01','10:00:00','10:00:00','12:50:00','12:45:00',0,'On Time'),
(24,112,'2026-09-10','10:00:00','10:40:00','12:50:00','13:30:00',40,'Delayed'),

(25,113,'2026-09-02','08:00:00','08:15:00','10:50:00','11:05:00',15,'Delayed'),
(26,113,'2026-09-11','08:00:00','08:05:00','10:50:00','11:00:00',5,'Delayed'),

(27,114,'2026-09-02','12:00:00','12:00:00','14:50:00','14:45:00',0,'On Time'),
(28,114,'2026-09-11','12:00:00','12:30:00','14:50:00','15:20:00',30,'Delayed'),

(29,115,'2026-09-03','06:00:00','06:20:00','07:15:00','07:35:00',20,'Delayed'),
(30,115,'2026-09-12','06:00:00','06:10:00','07:15:00','07:25:00',10,'Delayed'),

(31,116,'2026-09-03','09:00:00','09:00:00','10:15:00','10:10:00',0,'On Time'),
(32,116,'2026-09-12','09:00:00','09:35:00','10:15:00','10:50:00',35,'Delayed'),

(33,117,'2026-09-04','11:00:00','11:10:00','13:30:00','13:40:00',10,'Delayed'),
(34,117,'2026-09-13','11:00:00','11:15:00','13:30:00','13:45:00',15,'Delayed'),

(35,118,'2026-09-04','15:00:00','15:00:00','17:30:00','17:25:00',0,'On Time'),
(36,118,'2026-09-13','15:00:00','15:50:00','17:30:00','18:20:00',50,'Delayed'),

(37,119,'2026-09-05','17:00:00','17:25:00','18:20:00','18:45:00',25,'Delayed'),
(38,119,'2026-09-14','17:00:00','17:10:00','18:20:00','18:30:00',10,'Delayed'),

(39,120,'2026-09-05','20:00:00','20:00:00','21:20:00','21:15:00',0,'On Time'),
(40,120,'2026-09-14','20:00:00','20:30:00','21:20:00','21:50:00',30,'Delayed'),

(41,121,'2026-09-01','06:30:00','06:45:00','09:20:00','09:35:00',15,'Delayed'),
(42,121,'2026-09-15','06:30:00','07:10:00','09:20:00','10:00:00',40,'Delayed'),

(43,122,'2026-09-01','10:30:00','10:30:00','13:20:00','13:15:00',0,'On Time'),
(44,122,'2026-09-15','10:30:00','10:20:00','13:20:00','13:10:00',0,'On Time'),

(45,123,'2026-09-02','08:00:00','08:25:00','10:50:00','11:15:00',25,'Delayed'),
(46,123,'2026-09-16','08:00:00','08:45:00','10:50:00','11:35:00',45,'Delayed'),

(47,124,'2026-09-02','13:00:00','13:00:00','15:50:00','15:45:00',0,'On Time'),
(48,124,'2026-09-16','13:00:00','13:15:00','15:50:00','16:05:00',15,'Delayed'),

(49,125,'2026-09-03','07:00:00','07:10:00','08:15:00','08:25:00',10,'Delayed'),
(50,125,'2026-09-17','07:00:00','07:35:00','08:15:00','08:50:00',35,'Delayed'),

(51,126,'2026-09-03','09:30:00','09:30:00','10:45:00','10:40:00',0,'On Time'),
(52,126,'2026-09-17','09:30:00','09:20:00','10:45:00','10:35:00',0,'On Time'),

(53,127,'2026-09-04','11:30:00','11:50:00','14:00:00','14:20:00',20,'Delayed'),
(54,127,'2026-09-18','11:30:00','12:10:00','14:00:00','14:40:00',40,'Delayed'),

(55,128,'2026-09-04','16:00:00','16:00:00','18:30:00','18:25:00',0,'On Time'),
(56,128,'2026-09-18','16:00:00','16:30:00','18:30:00','19:00:00',30,'Delayed'),

(57,129,'2026-09-05','18:00:00','18:15:00','19:20:00','19:35:00',15,'Delayed'),
(58,129,'2026-09-19','18:00:00','18:50:00','19:20:00','20:10:00',50,'Delayed'),

(59,130,'2026-09-05','21:00:00','21:00:00','22:20:00','22:15:00',0,'On Time'),
(60,130,'2026-09-19','21:00:00','21:25:00','22:20:00','22:45:00',25,'Delayed'),

(61,131,'2026-09-01','07:30:00','07:40:00','10:20:00','10:30:00',10,'Delayed'),
(62,131,'2026-09-20','07:30:00','08:05:00','10:20:00','10:55:00',35,'Delayed'),

(63,132,'2026-09-01','11:00:00','11:00:00','13:50:00','13:45:00',0,'On Time'),
(64,132,'2026-09-20','11:00:00','11:20:00','13:50:00','14:10:00',20,'Delayed'),

(65,133,'2026-09-02','08:30:00','08:45:00','11:20:00','11:35:00',15,'Delayed'),
(66,133,'2026-09-21','08:30:00','09:15:00','11:20:00','12:05:00',45,'Delayed'),

(67,134,'2026-09-02','14:00:00','14:00:00','16:50:00','16:45:00',0,'On Time'),
(68,134,'2026-09-21','14:00:00','14:30:00','16:50:00','17:20:00',30,'Delayed'),

(69,135,'2026-09-03','06:45:00','07:00:00','08:00:00','08:15:00',15,'Delayed'),
(70,135,'2026-09-22','06:45:00','07:05:00','08:00:00','08:20:00',20,'Delayed'),

(71,136,'2026-09-03','09:15:00','09:15:00','10:30:00','10:25:00',0,'On Time'),
(72,136,'2026-09-22','09:15:00','09:45:00','10:30:00','11:00:00',30,'Delayed'),

(73,137,'2026-09-04','12:00:00','12:20:00','14:30:00','14:50:00',20,'Delayed'),
(74,137,'2026-09-23','12:00:00','12:40:00','14:30:00','15:10:00',40,'Delayed'),

(75,138,'2026-09-04','16:30:00','16:30:00','19:00:00','18:55:00',0,'On Time'),
(76,138,'2026-09-23','16:30:00','17:00:00','19:00:00','19:30:00',30,'Delayed'),

(77,139,'2026-09-05','18:30:00','18:45:00','19:50:00','20:05:00',15,'Delayed'),
(78,139,'2026-09-23','18:30:00','19:20:00','19:50:00','20:40:00',50,'Delayed'),

(79,140,'2026-09-05','21:30:00','21:30:00','22:50:00','22:45:00',0,'On Time'),
(80,140,'2026-09-23','21:30:00','21:50:00','22:50:00','23:10:00',20,'Delayed'),

(81,141,'2026-09-06','06:00:00','06:15:00','08:50:00','09:05:00',15,'Delayed'),
(82,141,'2026-09-20','06:00:00','06:40:00','08:50:00','09:30:00',40,'Delayed'),

(83,142,'2026-09-06','10:00:00','10:00:00','12:50:00','12:45:00',0,'On Time'),
(84,142,'2026-09-20','10:00:00','10:15:00','12:50:00','13:05:00',15,'Delayed'),

(85,143,'2026-09-07','08:00:00','08:30:00','10:50:00','11:20:00',30,'Delayed'),
(86,143,'2026-09-21','08:00:00','08:45:00','10:50:00','11:35:00',45,'Delayed'),

(87,144,'2026-09-07','13:30:00','13:30:00','16:20:00','16:15:00',0,'On Time'),
(88,144,'2026-09-21','13:30:00','13:20:00','16:20:00','16:10:00',0,'On Time'),

(89,145,'2026-09-08','07:00:00','07:10:00','08:15:00','08:25:00',10,'Delayed'),
(90,145,'2026-09-22','07:00:00','07:30:00','08:15:00','08:45:00',30,'Delayed'),

(91,146,'2026-09-08','09:30:00','09:30:00','10:45:00','10:40:00',0,'On Time'),
(92,146,'2026-09-22','09:30:00','09:50:00','10:45:00','11:05:00',20,'Delayed'),

(93,147,'2026-09-09','11:30:00','11:50:00','14:00:00','14:20:00',20,'Delayed'),
(94,147,'2026-09-23','11:30:00','12:20:00','14:00:00','14:50:00',50,'Delayed'),

(95,148,'2026-09-09','16:00:00','16:00:00','18:30:00','18:25:00',0,'On Time'),
(96,148,'2026-09-23','16:00:00','16:25:00','18:30:00','18:55:00',25,'Delayed'),

(97,149,'2026-09-10','18:00:00','18:20:00','19:20:00','19:40:00',20,'Delayed'),
(98,149,'2026-09-24','18:00:00','18:55:00','19:20:00','20:15:00',55,'Delayed'),

(99,150,'2026-09-10','21:00:00','21:00:00','22:20:00','22:15:00',0,'On Time'),
(100,150,'2026-09-24','21:00:00','21:30:00','22:20:00','22:50:00',30,'Delayed'),

(101,151,'2026-09-11','07:00:00','07:15:00','09:50:00','10:05:00',15,'Delayed'),
(102,151,'2026-09-25','07:00:00','07:40:00','09:50:00','10:30:00',40,'Delayed'),

(103,152,'2026-09-11','11:00:00','11:00:00','13:50:00','13:45:00',0,'On Time'),
(104,152,'2026-09-25','11:00:00','11:25:00','13:50:00','14:15:00',25,'Delayed'),

(105,153,'2026-09-12','08:00:00','08:20:00','10:50:00','11:10:00',20,'Delayed'),
(106,153,'2026-09-26','08:00:00','08:50:00','10:50:00','11:40:00',50,'Delayed'),

(107,154,'2026-09-12','14:00:00','14:00:00','16:50:00','16:45:00',0,'On Time'),
(108,154,'2026-09-26','14:00:00','14:20:00','16:50:00','17:10:00',20,'Delayed'),

(109,155,'2026-09-13','06:30:00','06:45:00','07:45:00','08:00:00',15,'Delayed'),
(110,155,'2026-09-27','06:30:00','07:05:00','07:45:00','08:20:00',35,'Delayed'),

(111,156,'2026-09-13','09:00:00','09:00:00','10:15:00','10:10:00',0,'On Time'),
(112,156,'2026-09-27','09:00:00','09:30:00','10:15:00','10:45:00',30,'Delayed'),

(113,157,'2026-09-14','12:00:00','12:15:00','14:30:00','14:45:00',15,'Delayed'),
(114,157,'2026-09-28','12:00:00','12:50:00','14:30:00','15:20:00',50,'Delayed'),

(115,158,'2026-09-14','16:00:00','16:00:00','18:30:00','18:25:00',0,'On Time'),
(116,158,'2026-09-28','16:00:00','16:35:00','18:30:00','19:05:00',35,'Delayed'),

(117,159,'2026-09-15','18:00:00','18:20:00','19:20:00','19:40:00',20,'Delayed'),
(118,159,'2026-09-29','18:00:00','18:45:00','19:20:00','20:05:00',45,'Delayed'),

(119,160,'2026-09-15','21:00:00','21:00:00','22:20:00','22:15:00',0,'On Time'),
(120,160,'2026-09-29','21:00:00','21:20:00','22:20:00','22:40:00',20,'Delayed');

SELECT * FROM flight_operations;

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    flight_id INT,
    passenger_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    seat_class VARCHAR(20),
    booking_status VARCHAR(20),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);
INSERT INTO passengers
(passenger_id, flight_id, passenger_name, age, gender, seat_class, booking_status)
VALUES
(1,101,'Arun Kumar',28,'Male','Economy','Confirmed'),
(2,101,'Priya S',24,'Female','Business','Confirmed'),
(3,101,'Karthik R',32,'Male','Economy','Confirmed'),
(4,101,'Divya M',27,'Female','Economy','Waitlisted'),
(5,101,'Rahul V',35,'Male','Premium Economy','Confirmed'),

(6,102,'Suresh B',41,'Male','Economy','Confirmed'),
(7,102,'Meena K',29,'Female','Economy','Confirmed'),
(8,102,'Vignesh P',26,'Male','Business','Cancelled'),
(9,102,'Anitha R',34,'Female','Economy','Confirmed'),
(10,102,'Gokul S',22,'Male','Economy','Confirmed'),

(11,103,'Ravi Kumar',38,'Male','Economy','Confirmed'),
(12,103,'Swetha M',25,'Female','Premium Economy','Confirmed'),
(13,103,'Ajay R',31,'Male','Economy','Waitlisted'),
(14,103,'Harini S',28,'Female','Business','Confirmed'),
(15,103,'Manoj K',45,'Male','Economy','Confirmed'),

(16,104,'Dinesh P',30,'Male','Economy','Confirmed'),
(17,104,'Keerthana R',23,'Female','Economy','Confirmed'),
(18,104,'Sanjay M',36,'Male','Business','Confirmed'),
(19,104,'Pavithra S',27,'Female','Economy','Cancelled'),
(20,104,'Lokesh V',33,'Male','Premium Economy','Confirmed'),

(21,105,'Ashwin K',29,'Male','Economy','Confirmed'),
(22,105,'Nandhini P',26,'Female','Business','Confirmed'),
(23,105,'Praveen S',40,'Male','Economy','Confirmed'),
(24,105,'Aishwarya M',24,'Female','Economy','Waitlisted'),
(25,105,'Surya R',37,'Male','Premium Economy','Confirmed'),

(26,106,'Vijay Kumar',43,'Male','Economy','Confirmed'),
(27,106,'Ramya S',31,'Female','Economy','Confirmed'),
(28,106,'Hari P',28,'Male','Business','Cancelled'),
(29,106,'Janani R',22,'Female','Economy','Confirmed'),
(30,106,'Naveen K',34,'Male','Economy','Confirmed'),

(31,107,'Mohan B',39,'Male','Premium Economy','Confirmed'),
(32,107,'Deepa M',27,'Female','Economy','Confirmed'),
(33,107,'Kishore R',25,'Male','Economy','Waitlisted'),
(34,107,'Lavanya S',30,'Female','Business','Confirmed'),
(35,107,'Bala K',42,'Male','Economy','Confirmed'),

(36,108,'Sathish P',36,'Male','Economy','Confirmed'),
(37,108,'Reshma R',24,'Female','Economy','Cancelled'),
(38,108,'Ganesh M',33,'Male','Business','Confirmed'),
(39,108,'Swathi K',29,'Female','Premium Economy','Confirmed'),
(40,108,'Aravind S',26,'Male','Economy','Confirmed'),

(41,109,'Prakash V',44,'Male','Economy','Confirmed'),
(42,109,'Shalini R',32,'Female','Business','Confirmed'),
(43,109,'Vasanth K',28,'Male','Economy','Waitlisted'),
(44,109,'Monisha P',23,'Female','Economy','Confirmed'),
(45,109,'Nithin S',35,'Male','Premium Economy','Confirmed'),

(46,110,'Madhan R',31,'Male','Economy','Confirmed'),
(47,110,'Kavya M',25,'Female','Economy','Confirmed'),
(48,110,'Ramesh K',47,'Male','Business','Cancelled'),
(49,110,'Sangeetha P',38,'Female','Economy','Confirmed'),
(50,110,'Vimal S',29,'Male','Economy','Confirmed'),

(51,111,'Adithya R',27,'Male','Premium Economy','Confirmed'),
(52,111,'Nithya S',24,'Female','Economy','Confirmed'),
(53,111,'Siva K',40,'Male','Economy','Waitlisted'),
(54,111,'Bhavani M',35,'Female','Business','Confirmed'),
(55,111,'Rohit P',30,'Male','Economy','Confirmed'),

(56,112,'Vivek S',33,'Male','Economy','Confirmed'),
(57,112,'Ranjani R',28,'Female','Economy','Cancelled'),
(58,112,'Surendran K',45,'Male','Business','Confirmed'),
(59,112,'Gayathri P',26,'Female','Premium Economy','Confirmed'),
(60,112,'Muralidhar M',37,'Male','Economy','Confirmed'),

(61,113,'Akash V',25,'Male','Economy','Confirmed'),
(62,113,'Pooja S',29,'Female','Business','Confirmed'),
(63,113,'Dhanush R',23,'Male','Economy','Waitlisted'),
(64,113,'Sindhu M',34,'Female','Economy','Confirmed'),
(65,113,'Raghav K',41,'Male','Premium Economy','Confirmed'),

(66,114,'Kannan P',46,'Male','Economy','Confirmed'),
(67,114,'Deepika R',27,'Female','Economy','Confirmed'),
(68,114,'Varun S',32,'Male','Business','Cancelled'),
(69,114,'Mahalakshmi K',39,'Female','Economy','Confirmed'),
(70,114,'Naveena M',22,'Female','Premium Economy','Confirmed'),

(71,115,'Suresh Kumar',43,'Male','Economy','Confirmed'),
(72,115,'Priyanka R',31,'Female','Business','Confirmed'),
(73,115,'Manikandan S',29,'Male','Economy','Waitlisted'),
(74,115,'Divya P',26,'Female','Economy','Confirmed'),
(75,115,'Arun V',36,'Male','Premium Economy','Confirmed'),

(76,116,'Karthik M',33,'Male','Economy','Confirmed'),
(77,116,'Anu S',24,'Female','Economy','Cancelled'),
(78,116,'Rajesh P',48,'Male','Business','Confirmed'),
(79,116,'Keerthi R',28,'Female','Economy','Confirmed'),
(80,116,'Surya K',30,'Male','Premium Economy','Confirmed'),

(81,117,'Vignesh M',27,'Male','Economy','Confirmed'),
(82,117,'Harini P',25,'Female','Business','Confirmed'),
(83,117,'Lokesh R',39,'Male','Economy','Waitlisted'),
(84,117,'Nandhini S',32,'Female','Economy','Confirmed'),
(85,117,'Ashok K',44,'Male','Premium Economy','Confirmed'),

(86,118,'Ravi S',35,'Male','Economy','Confirmed'),
(87,118,'Aarthi M',29,'Female','Economy','Confirmed'),
(88,118,'Mohan R',41,'Male','Business','Cancelled'),
(89,118,'Pavithra K',23,'Female','Premium Economy','Confirmed'),
(90,118,'Sanjay P',31,'Male','Economy','Confirmed'),

(91,119,'Gokul M',26,'Male','Economy','Confirmed'),
(92,119,'Meena R',37,'Female','Business','Confirmed'),
(93,119,'Praveen K',30,'Male','Economy','Waitlisted'),
(94,119,'Swetha P',24,'Female','Economy','Confirmed'),
(95,119,'Dinesh S',43,'Male','Premium Economy','Confirmed'),

(96,120,'Ajay Kumar',34,'Male','Economy','Confirmed'),
(97,120,'Ramya P',28,'Female','Economy','Cancelled'),
(98,120,'Vijay R',45,'Male','Business','Confirmed'),
(99,120,'Janani S',26,'Female','Premium Economy','Confirmed'),
(100,120,'Manoj K',38,'Male','Economy','Confirmed'),

(101,121,'Rahul S',29,'Male','Economy','Confirmed'),
(102,121,'Aishwarya R',25,'Female','Business','Confirmed'),
(103,121,'Kishore P',33,'Male','Economy','Waitlisted'),
(104,121,'Lavanya M',30,'Female','Economy','Confirmed'),
(105,121,'Bharath K',40,'Male','Premium Economy','Confirmed'),

(106,122,'Sathish R',36,'Male','Economy','Confirmed'),
(107,122,'Reshma P',27,'Female','Economy','Cancelled'),
(108,122,'Ganesh S',31,'Male','Business','Confirmed'),
(109,122,'Swathi M',24,'Female','Premium Economy','Confirmed'),
(110,122,'Aravind K',35,'Male','Economy','Confirmed'),

(111,123,'Prakash R',42,'Male','Economy','Confirmed'),
(112,123,'Shalini M',29,'Female','Business','Confirmed'),
(113,123,'Vasanth P',26,'Male','Economy','Waitlisted'),
(114,123,'Monisha S',23,'Female','Economy','Confirmed'),
(115,123,'Nithin K',37,'Male','Premium Economy','Confirmed'),

(116,124,'Madhan S',32,'Male','Economy','Confirmed'),
(117,124,'Kavya R',28,'Female','Economy','Confirmed'),
(118,124,'Ramesh P',46,'Male','Business','Cancelled'),
(119,124,'Sangeetha M',35,'Female','Economy','Confirmed'),
(120,124,'Vimal K',30,'Male','Premium Economy','Confirmed'),

(121,125,'Adithya P',27,'Male','Economy','Confirmed'),
(122,125,'Nithya R',24,'Female','Business','Confirmed'),
(123,125,'Siva M',39,'Male','Economy','Waitlisted'),
(124,125,'Bhavani S',33,'Female','Economy','Confirmed'),
(125,125,'Rohit K',31,'Male','Premium Economy','Confirmed'),

(126,126,'Vivek R',34,'Male','Economy','Confirmed'),
(127,126,'Ranjani M',26,'Female','Economy','Cancelled'),
(128,126,'Surendran P',44,'Male','Business','Confirmed'),
(129,126,'Gayathri S',28,'Female','Premium Economy','Confirmed'),
(130,126,'Muralidhar K',41,'Male','Economy','Confirmed'),

(131,127,'Akash S',25,'Male','Economy','Confirmed'),
(132,127,'Pooja R',30,'Female','Business','Confirmed'),
(133,127,'Dhanush M',22,'Male','Economy','Waitlisted'),
(134,127,'Sindhu P',36,'Female','Economy','Confirmed'),
(135,127,'Raghav S',43,'Male','Premium Economy','Confirmed'),

(136,128,'Kannan R',47,'Male','Economy','Confirmed'),
(137,128,'Deepika M',27,'Female','Economy','Confirmed'),
(138,128,'Varun P',34,'Male','Business','Cancelled'),
(139,128,'Mahalakshmi S',40,'Female','Economy','Confirmed'),
(140,128,'Naveena K',23,'Female','Premium Economy','Confirmed'),

(141,129,'Suresh M',42,'Male','Economy','Confirmed'),
(142,129,'Priyanka S',32,'Female','Business','Confirmed'),
(143,129,'Manikandan R',29,'Male','Economy','Waitlisted'),
(144,129,'Divya K',26,'Female','Economy','Confirmed'),
(145,129,'Arun P',37,'Male','Premium Economy','Confirmed'),

(146,130,'Karthik S',34,'Male','Economy','Confirmed'),
(147,130,'Anu R',25,'Female','Economy','Cancelled'),
(148,130,'Rajesh M',49,'Male','Business','Confirmed'),
(149,130,'Keerthi P',28,'Female','Economy','Confirmed'),
(150,130,'Surya S',31,'Male','Premium Economy','Confirmed'),

(151,131,'Vignesh R',27,'Male','Economy','Confirmed'),
(152,131,'Harini M',26,'Female','Business','Confirmed'),
(153,131,'Lokesh P',38,'Male','Economy','Waitlisted'),
(154,131,'Nandhini K',33,'Female','Economy','Confirmed'),
(155,131,'Ashok S',45,'Male','Premium Economy','Confirmed'),

(156,132,'Ravi M',36,'Male','Economy','Confirmed'),
(157,132,'Aarthi P',29,'Female','Economy','Confirmed'),
(158,132,'Mohan S',42,'Male','Business','Cancelled'),
(159,132,'Pavithra R',24,'Female','Premium Economy','Confirmed'),
(160,132,'Sanjay K',32,'Male','Economy','Confirmed'),

(161,133,'Gokul R',27,'Male','Economy','Confirmed'),
(162,133,'Meena P',38,'Female','Business','Confirmed'),
(163,133,'Praveen S',31,'Male','Economy','Waitlisted'),
(164,133,'Swetha K',25,'Female','Economy','Confirmed'),
(165,133,'Dinesh M',44,'Male','Premium Economy','Confirmed'),

(166,134,'Ajay S',35,'Male','Economy','Confirmed'),
(167,134,'Ramya M',29,'Female','Economy','Cancelled'),
(168,134,'Vijay P',46,'Male','Business','Confirmed'),
(169,134,'Janani K',27,'Female','Premium Economy','Confirmed'),
(170,134,'Manoj R',39,'Male','Economy','Confirmed'),

(171,135,'Rahul M',30,'Male','Economy','Confirmed'),
(172,135,'Aishwarya S',26,'Female','Business','Confirmed'),
(173,135,'Kishore K',34,'Male','Economy','Waitlisted'),
(174,135,'Lavanya R',31,'Female','Economy','Confirmed'),
(175,135,'Bharath P',41,'Male','Premium Economy','Confirmed'),

(176,136,'Sathish M',37,'Male','Economy','Confirmed'),
(177,136,'Reshma S',28,'Female','Economy','Cancelled'),
(178,136,'Ganesh R',32,'Male','Business','Confirmed'),
(179,136,'Swathi P',25,'Female','Premium Economy','Confirmed'),
(180,136,'Aravind M',36,'Male','Economy','Confirmed'),

(181,137,'Prakash S',43,'Male','Economy','Confirmed'),
(182,137,'Shalini P',30,'Female','Business','Confirmed'),
(183,137,'Vasanth M',27,'Male','Economy','Waitlisted'),
(184,137,'Monisha K',24,'Female','Economy','Confirmed'),
(185,137,'Nithin R',38,'Male','Premium Economy','Confirmed'),

(186,138,'Madhan K',33,'Male','Economy','Confirmed'),
(187,138,'Kavya S',29,'Female','Economy','Confirmed'),
(188,138,'Ramesh R',47,'Male','Business','Cancelled'),
(189,138,'Sangeetha P',36,'Female','Economy','Confirmed'),
(190,138,'Vimal M',31,'Male','Premium Economy','Confirmed'),

(191,139,'Adithya K',28,'Male','Economy','Confirmed'),
(192,139,'Nithya S',25,'Female','Business','Confirmed'),
(193,139,'Siva R',41,'Male','Economy','Waitlisted'),
(194,139,'Bhavani P',34,'Female','Economy','Confirmed'),
(195,139,'Rohit M',32,'Male','Premium Economy','Confirmed'),

(196,140,'Vivek S',35,'Male','Economy','Confirmed'),
(197,140,'Ranjani K',27,'Female','Economy','Cancelled'),
(198,140,'Surendran M',45,'Male','Business','Confirmed'),
(199,140,'Gayathri R',29,'Female','Premium Economy','Confirmed'),
(200,140,'Muralidhar P',42,'Male','Economy','Confirmed'),

(201,141,'Akash K',26,'Male','Economy','Confirmed'),
(202,141,'Pooja M',31,'Female','Business','Confirmed'),
(203,141,'Dhanush S',24,'Male','Economy','Waitlisted'),
(204,141,'Sindhu R',37,'Female','Economy','Confirmed'),
(205,141,'Raghav P',44,'Male','Premium Economy','Confirmed'),

(206,142,'Kannan M',48,'Male','Economy','Confirmed'),
(207,142,'Deepika S',28,'Female','Economy','Confirmed'),
(208,142,'Varun R',35,'Male','Business','Cancelled'),
(209,142,'Mahalakshmi P',41,'Female','Economy','Confirmed'),
(210,142,'Naveena R',24,'Female','Premium Economy','Confirmed'),

(211,143,'Suresh R',44,'Male','Economy','Confirmed'),
(212,143,'Priyanka M',33,'Female','Business','Confirmed'),
(213,143,'Manikandan P',30,'Male','Economy','Waitlisted'),
(214,143,'Divya S',27,'Female','Economy','Confirmed'),
(215,143,'Arun K',38,'Male','Premium Economy','Confirmed'),

(216,144,'Karthik R',35,'Male','Economy','Confirmed'),
(217,144,'Anu P',26,'Female','Economy','Cancelled'),
(218,144,'Rajesh S',50,'Male','Business','Confirmed'),
(219,144,'Keerthi M',29,'Female','Economy','Confirmed'),
(220,144,'Surya P',32,'Male','Premium Economy','Confirmed'),

(221,145,'Vignesh K',28,'Male','Economy','Confirmed'),
(222,145,'Harini S',27,'Female','Business','Confirmed'),
(223,145,'Lokesh M',39,'Male','Economy','Waitlisted'),
(224,145,'Nandhini P',34,'Female','Economy','Confirmed'),
(225,145,'Ashok R',46,'Male','Premium Economy','Confirmed'),

(226,146,'Ravi K',37,'Male','Economy','Confirmed'),
(227,146,'Aarthi S',30,'Female','Economy','Confirmed'),
(228,146,'Mohan P',43,'Male','Business','Cancelled'),
(229,146,'Pavithra M',25,'Female','Premium Economy','Confirmed'),
(230,146,'Sanjay R',33,'Male','Economy','Confirmed'),

(231,147,'Gokul K',28,'Male','Economy','Confirmed'),
(232,147,'Meena S',39,'Female','Business','Confirmed'),
(233,147,'Praveen M',32,'Male','Economy','Waitlisted'),
(234,147,'Swetha R',26,'Female','Economy','Confirmed'),
(235,147,'Dinesh P',45,'Male','Premium Economy','Confirmed'),

(236,148,'Ajay R',36,'Male','Economy','Confirmed'),
(237,148,'Ramya S',30,'Female','Economy','Cancelled'),
(238,148,'Vijay M',47,'Male','Business','Confirmed'),
(239,148,'Janani P',28,'Female','Premium Economy','Confirmed'),
(240,148,'Manoj S',40,'Male','Economy','Confirmed'),

(241,149,'Rahul R',31,'Male','Economy','Confirmed'),
(242,149,'Aishwarya M',27,'Female','Business','Confirmed'),
(243,149,'Kishore P',35,'Male','Economy','Waitlisted'),
(244,149,'Lavanya S',32,'Female','Economy','Confirmed'),
(245,149,'Bharath R',42,'Male','Premium Economy','Confirmed'),

(246,150,'Sathish K',38,'Male','Economy','Confirmed'),
(247,150,'Reshma M',29,'Female','Economy','Cancelled'),
(248,150,'Ganesh P',33,'Male','Business','Confirmed'),
(249,150,'Swathi S',26,'Female','Premium Economy','Confirmed'),
(250,150,'Aravind R',37,'Male','Economy','Confirmed'),

(251,151,'Prakash K',44,'Male','Economy','Confirmed'),
(252,151,'Shalini R',31,'Female','Business','Confirmed'),
(253,151,'Vasanth S',28,'Male','Economy','Waitlisted'),
(254,151,'Monisha M',25,'Female','Economy','Confirmed'),
(255,151,'Nithin P',39,'Male','Premium Economy','Confirmed'),

(256,152,'Madhan R',34,'Male','Economy','Confirmed'),
(257,152,'Kavya P',30,'Female','Economy','Confirmed'),
(258,152,'Ramesh S',48,'Male','Business','Cancelled'),
(259,152,'Sangeetha K',37,'Female','Economy','Confirmed'),
(260,152,'Vimal R',32,'Male','Premium Economy','Confirmed'),

(261,153,'Adithya S',29,'Male','Economy','Confirmed'),
(262,153,'Nithya M',26,'Female','Business','Confirmed'),
(263,153,'Siva P',42,'Male','Economy','Waitlisted'),
(264,153,'Bhavani R',35,'Female','Economy','Confirmed'),
(265,153,'Rohit K',33,'Male','Premium Economy','Confirmed'),

(266,154,'Vivek P',36,'Male','Economy','Confirmed'),
(267,154,'Ranjani S',28,'Female','Economy','Cancelled'),
(268,154,'Surendran R',46,'Male','Business','Confirmed'),
(269,154,'Gayathri M',30,'Female','Premium Economy','Confirmed'),
(270,154,'Muralidhar S',43,'Male','Economy','Confirmed'),

(271,155,'Akash R',27,'Male','Economy','Confirmed'),
(272,155,'Pooja S',32,'Female','Business','Confirmed'),
(273,155,'Dhanush P',25,'Male','Economy','Waitlisted'),
(274,155,'Sindhu M',38,'Female','Economy','Confirmed'),
(275,155,'Raghav R',45,'Male','Premium Economy','Confirmed'),

(276,156,'Kannan S',49,'Male','Economy','Confirmed'),
(277,156,'Deepika P',29,'Female','Economy','Confirmed'),
(278,156,'Varun M',36,'Male','Business','Cancelled'),
(279,156,'Mahalakshmi R',42,'Female','Economy','Confirmed'),
(280,156,'Naveena S',25,'Female','Premium Economy','Confirmed'),

(281,157,'Suresh P',45,'Male','Economy','Confirmed'),
(282,157,'Priyanka K',34,'Female','Business','Confirmed'),
(283,157,'Manikandan S',31,'Male','Economy','Waitlisted'),
(284,157,'Divya R',28,'Female','Economy','Confirmed'),
(285,157,'Arun M',39,'Male','Premium Economy','Confirmed'),

(286,158,'Karthik P',36,'Male','Economy','Confirmed'),
(287,158,'Anu S',27,'Female','Economy','Cancelled'),
(288,158,'Rajesh R',51,'Male','Business','Confirmed'),
(289,158,'Keerthi P',30,'Female','Economy','Confirmed'),
(290,158,'Surya M',33,'Male','Premium Economy','Confirmed'),

(291,159,'Vignesh S',29,'Male','Economy','Confirmed'),
(292,159,'Harini R',28,'Female','Business','Confirmed'),
(293,159,'Lokesh P',40,'Male','Economy','Waitlisted'),
(294,159,'Nandhini M',35,'Female','Economy','Confirmed'),
(295,159,'Ashok P',47,'Male','Premium Economy','Confirmed'),

(296,160,'Ravi S',38,'Male','Economy','Confirmed'),
(297,160,'Aarthi R',31,'Female','Economy','Confirmed'),
(298,160,'Mohan K',44,'Male','Business','Cancelled'),
(299,160,'Pavithra S',26,'Female','Premium Economy','Confirmed'),
(300,160,'Sanjay M',34,'Male','Economy','Confirmed');

SELECT * FROM  passengers;
SELECT COUNT(*) AS total_passengers
FROM passengers;

-- 1.Display the flight number, airline, source and destination of all flights?
-- Purpose: To see which flight is operated by which airline and its travel route.
SELECT flight_number, airline, source, destination
FROM flights;

-- 2.Display all flights departing from Chennai ?
-- Purpose: To identify flights that depart from Chennai.
SELECT flight_number, airline,source, destination
FROM flights
WHERE source = 'Chennai';

-- 3.Display all flights arriving at Delhi ?
-- Purpose: To identify flights that arrive at Delhi.
SELECT flight_number, airline, source,destination
FROM flights
WHERE destination = 'Delhi';

-- 4.Find all flights that were delayed by more than 30 minutes.
-- Purpose: To identify flights with significant delays for airport operations analysis.
SELECT flight_id, flight_date, delay_minutes, status
FROM flight_operations
WHERE delay_minutes > 30;

-- 5.Find the maximum delay recorded for any flight.
-- Purpose: To find the highest delay recorded in the airport.
SELECT MAX(delay_minutes) AS maximum_delay
FROM flight_operations;

-- 6. Display all flights operated by IndiGo.
-- Purpose: To identify the flights operated by a specific airline.
SELECT flight_number, source, destination, aircraft_type
FROM flights
WHERE airline = 'IndiGo';

-- 7. Find the total number of flights.
-- Purpose: To know the total number of flights available in the airport system.
SELECT COUNT(*) AS total_flights
FROM flights;

-- 8. Find the number of flights operated by each airline.
-- Purpose: To compare the number of flights operated by each airline.
SELECT airline, COUNT(*) AS total_flights
FROM flights
GROUP BY airline;

-- 9. Display flight operations in scheduled departure order.
-- Purpose: To view flights from the earliest scheduled departure to the latest.
-- Real-time Usage: Airport operations team can monitor which flight departs first and which departs next.
SELECT flight_id, flight_date, scheduled_departure, status
FROM flight_operations
ORDER BY scheduled_departure ASC;

-- 10. Display all unique destinations.
-- Purpose: To identify the different destinations available in the flight schedule.
-- Real-time Usage: Airport operations team can see which cities are connected through the airport and monitor the available routes.
SELECT DISTINCT destination
FROM flights;

-- 11.Display flights arriving at Delhi, Mumbai, or Bangalore.
-- Purpose: To identify flights arriving at specific destinations.
-- Real-time Usage: Airport operations team can monitor flights arriving at important or selected routes.
SELECT flight_number, airline, source, destination
FROM flights
WHERE destination IN ('Delhi', 'Mumbai', 'Bangalore');

-- 12. Find flights with delays between 10 and 30 minutes.
-- Purpose: To identify flights with moderate delays.
-- Real-time Usage: Airport operations team can monitor flights having moderate delays and take necessary operational action.
SELECT flight_id,flight_date, delay_minutes, status
FROM flight_operations
WHERE delay_minutes BETWEEN 10 AND 30;

-- 13.Display the flight number, airline, flight date, delay minutes, and status of each flight.
SELECT f.flight_number,f.airline,fo.flight_date,fo.delay_minutes,fo.status
FROM flights f 
INNER JOIN flight_operations fo ON f.flight_id=fo.flight_id;

-- 14.Find airlines that operate more than 10 flights.
-- Purpose: To filter airlines based on their flight count.
SELECT airline ,COUNT(*) as total_flight
from flights
GROUP BY airline
HAVING COUNT(*) > 5;

-- 15.Display the flight number, airline, passenger name, seat class, and booking status for each passenger
SELECT f.flight_number,f.airline,pd.passenger_name,pd.seat_class,pd.booking_status
from flights f 
inner join passengers pd ON f.flight_id=pd.flight_id;

-- 16.Find the flights whose delay is greater than the average delay of all flight operations.
-- ex:(10 + 20 + 30 + 40) ÷ 4 = 25,greater than > Flight 103 → 30 min ✅
SELECT f.flight_number,
       f.airline,
       fo.delay_minutes
FROM flights f
INNER JOIN flight_operations fo
    ON f.flight_id = fo.flight_id
WHERE fo.delay_minutes > (
    SELECT AVG(delay_minutes)
    FROM flight_operations
);

-- 17 . Classify flights based on their delay time.
-- Purpose: To categorize flights according to delay duration.
-- Real-time Usage: Airport teams can quickly identify the severity of flight delays.
SELECT flight_id,
       delay_minutes,
       CASE
           WHEN delay_minutes = 0 THEN 'On Time'
           WHEN delay_minutes <= 30 THEN 'Minor Delay'
           ELSE 'Major Delay'
       END AS delay_category
FROM flight_operations;

-- 18. Find airlines with an average delay above 20 minutes.CTE (Common Table Expression)
-- with-create temporary result
-- ex:airline_delay-IndiGo 20,Air India 25,Vistara 15

WITH airline_delay AS (
    SELECT airline,
           AVG(delay_minutes) AS avg_delay
    FROM flights f
    JOIN flight_operations fo
        ON f.flight_id = fo.flight_id
    GROUP BY airline
)
SELECT airline,
       avg_delay
FROM airline_delay
WHERE avg_delay > 20;

-- 19. Find flights that have at least one passenger.
-- WHERE p.flight_id = 101
-- Real-time Usage: To identify flights that have passenger bookings.

SELECT f.flight_number,
       f.airline,
       f.source,
       f.destination
FROM flights f
WHERE EXISTS (
    SELECT 1
    FROM passengers p
    WHERE p.flight_id = f.flight_id
);

-- 20. Find flights with no passenger records.
-- Purpose: To identify flights without passenger bookings.
-- Real-time Usage: Airport teams can identify flights with no passenger bookings.
SELECT f.flight_number,
       f.airline,
       f.source,
       f.destination
FROM flights f
WHERE NOT EXISTS (
    SELECT 1
    FROM passengers p
    WHERE p.flight_id = f.flight_id
);

-- 21. Rank flights based on delay time.
-- Purpose: To rank flights from highest delay to lowest delay.
-- Real-time Usage: Airport management can identify highly delayed flights and their airlines.
SELECT f.flight_number,
       f.airline,
       fo.flight_date,
       fo.delay_minutes,
       RANK() OVER (ORDER BY fo.delay_minutes DESC) AS delay_rank
FROM flights f
JOIN flight_operations fo
    ON f.flight_id = fo.flight_id;
    
-- 22. Rank flights based on delay without skipping ranks.
-- Purpose: To rank flights according to delay time.
-- Real-time Usage: Airport management can identify delay priority levels.

SELECT f.flight_number,
       f.airline,
       fo.delay_minutes,
       DENSE_RANK() OVER (ORDER BY fo.delay_minutes DESC) AS delay_rank
FROM flights f
JOIN flight_operations fo
    ON f.flight_id = fo.flight_id;
    
    -- 23. Compare each flight delay with the previous flight delay.
-- Purpose: To compare the current delay with the previous operation.
-- Real-time Usage: Airport teams can monitor whether delays are increasing or decreasing.

SELECT f.flight_number,
	   f.airline,
       fo.flight_date,
       fo.delay_minutes,
       LAG(fo.delay_minutes) OVER (
           PARTITION BY fo.flight_id
           ORDER BY fo.flight_date
       ) AS previous_delay
FROM flights f
JOIN flight_operations fo
    ON f.flight_id = fo.flight_id;
    
-- 24. Display all source and destination airports.
-- Purpose: To combine source and destination locations into one list.
-- Real-time Usage: Airport management can get a complete list of airports involved in flight operations.

SELECT source AS airport
FROM flights

UNION

SELECT destination AS airport
FROM flights;

-- 25. Combine source and destination airports including duplicates.
-- Purpose: To combine two sets of airport locations without removing duplicates.
-- including duplicates

SELECT source AS airport
FROM flights

UNION ALL

SELECT destination AS airport
FROM flights;

-- 26. Create a view for flight delay details.
-- Purpose: To save frequently used flight delay information.
-- View=Saved query

CREATE VIEW flight_delay_view AS
SELECT f.flight_number,
       f.airline,
       fo.flight_date,
       fo.delay_minutes,
       fo.status
FROM flights f
JOIN flight_operations fo
    ON f.flight_id = fo.flight_id;
    select * from flight_delay_view;   

-- 27. Display the top 5 most delayed flight operations.
-- Purpose: To retrieve only the five highest-delay records.
-- Real-time Usage: Airport management can quickly focus on the most delayed operations.

SELECT flight_number,
       airline,
       DATE_FORMAT(flight_date, '%d-%m-%Y') AS flight_date,
       delay_minutes,
       status
FROM flight_delay_view
ORDER BY delay_minutes DESC
LIMIT 5; 

-- 28. Display every flight with its passenger count.
-- Purpose: To count passengers for each flight.
-- Real-time Usage: Airport teams can monitor passenger load for each flight.

SELECT f.flight_number,
       f.airline,
       COUNT(p.passenger_id) AS total_passengers
FROM flights f
LEFT JOIN passengers p
    ON f.flight_id = p.flight_id
GROUP BY f.flight_id,
         f.flight_number,
         f.airline;
    
-- 29. Display all flight numbers for each airline.
-- Purpose: To combine multiple flight numbers into one airline-wise list.
-- Real-time Usage: Airport management can quickly view all flights operated by each airline.
SELECT airline,
       GROUP_CONCAT(DISTINCT flight_number
                    ORDER BY flight_number
                    SEPARATOR ', ') AS flight_list
FROM flight_delay_view
GROUP BY airline;

-- 30.Display the flight details, operation details, and passenger booking details by combining the flights,
-- flight_operations, and passengers tables.
SELECT f.flight_number,
       f.airline,
       fo.flight_date,
       fo.delay_minutes,
       fo.status,
       p.passenger_name,
       p.seat_class,
       p.booking_status
FROM flights f
INNER JOIN flight_operations fo
    ON f.flight_id = fo.flight_id
INNER JOIN passengers p
    ON f.flight_id = p.flight_id;

    

--Part 2: 

DROP TABLE PAYMENT;
DROP TABLE BOOKING;
DROP TABLE GUEST;
DROP TABLE PROMOTION;
DROP TABLE REVIEW;
DROP TABLE AMENITY;
DROP TABLE LOCATION;
DROP TABLE PROPERTY;
DROP TABLE LISTING;
DROP TABLE HOST;
DROP TABLE USERS;
DROP TABLE CALENDAR;
DROP TABLE MESSAGE;
DROP TABLE CHAT;
DROP TABLE NOTIFICATION;
DROP TABLE USERROLE;
DROP TABLE SYSTEMUSER;

--Create SystemUser table
CREATE TABLE SystemUser (
    SYS_USR_ID INT PRIMARY KEY,
    SYS_USR_NAME VARCHAR2(30),
    SYS_USR_PASSWORD VARCHAR2(100),
    SYS_USR_SECURITY_QUESTION VARCHAR2(100),
    SYS_USR_SECURITY_ANSWER VARCHAR2(100)
);

--INSERT INTO SystemUser Table
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(1, 'John', 'password1', 'Favorite color?', 'Blue');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(2, 'Ayşe', 'ayse456', 'First teacher''s name?', 'Fatma');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(3, 'Mehmet', 'mehmet789', 'Favorite movie?', 'Butterflies');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(4, 'Fatma', 'fatma123', 'Place of birth?', 'Ankara');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(5, 'Mustafa', 'mustafa456', 'First pet''s name?', 'Karabaş');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(6, 'Zeynep', 'zeynep789', 'Favorite food?', 'Stuffed Eggplant');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(7, 'Ali', 'ali123', 'Favorite fruit?', 'Apple');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(8, 'Ayhan', 'ayhan456', 'First car brand?', 'Renault');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(9, 'Selin', 'selin789', 'Favorite city?', 'Istanbul');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(10, 'Emre', 'emre123', 'First kiss location?', 'Park');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(11, 'Nazlı', 'nazli456', 'Favorite book?', 'Harry Potter');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(12, 'Eren', 'eren789', 'Mother''s maiden name?', 'Kaya');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(13, 'Derya', 'derya123', 'Favorite sports team?', 'Galatasaray');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(14, 'Cem', 'cem456', 'Favorite actor?', 'Leonardo DiCaprio');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(15, 'Aysel', 'aysel789', 'Favorite holiday destination?', 'Maldives');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(16, 'Kaan', 'kaan123', 'First concert attended?', 'Linkin Park');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(17, 'Ece', 'ece456', 'Favorite TV show?', 'Friends');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(18, 'Tolga', 'tolga789', 'Favorite animal?', 'Dolphin');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(19, 'İrem', 'irem123', 'Favorite hobby?', 'Painting');
INSERT INTO SystemUser (SYS_USR_ID, SYS_USR_NAME, SYS_USR_PASSWORD, SYS_USR_SECURITY_QUESTION, SYS_USR_SECURITY_ANSWER) VALUES
(20, 'Can', 'can456', 'First job?', 'Internship');



--Create table UserRole
CREATE TABLE UserRole (
    USR_ID NUMBER PRIMARY KEY,
    USR_ROLE VARCHAR2(100),
    FOREIGN KEY (USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);

--INSERT INTO UserRole table
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (0, 'Admin');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (1, 'User');

INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (3, 'User');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (4, 'User');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (5, 'Moderator');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (6, 'User');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (7, 'User');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (8, 'Moderator');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (9, 'User');
INSERT INTO UserRole (USR_ID, USR_ROLE) VALUES (10, 'Manager');


--Create Notification table
CREATE TABLE Notification (
    NOT_ID INT PRIMARY KEY,
    USR_ID INT,
    NOT_DETAILS VARCHAR2(255),
    FOREIGN KEY (USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);

--INSERT INTO Notification table
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (101, 2, 'You have a new message.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (102, 14, 'Reservation confirmed.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (103, 6, 'You have a new notification.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (104, 8, 'You have a new message.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (105, 10, 'Reservation canceled.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (106, 3, 'You have a new notification.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (107, 5, 'You have a new message.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (108, 16, 'Reservation canceled.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (109, 9, 'You have a new message.');
INSERT INTO Notification (NOT_ID, USR_ID, NOT_DETAILS) VALUES (110, 11, 'You have a new notification.');


--Create table Chat
CREATE TABLE Chat (
    CHT_ID INT,
    CHT_PURPOSE VARCHAR2(100),
    CHT_DETAILS VARCHAR2(255),
    USR_ID1 INT,
    USR_ID2 INT,
    PRIMARY KEY (CHT_ID), 
    FOREIGN KEY (USR_ID1) REFERENCES SystemUser(SYS_USR_ID),
    FOREIGN KEY (USR_ID2) REFERENCES SystemUser(SYS_USR_ID)
);

--INSERT INTO Chat table
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (201, 'Casual chat', 'Hi, how are you?', 2, 1);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (202, 'Support', 'Hello, I need your assistance.', 7, 4);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (203, 'Discussion', 'What is your opinion on this?', 9, 6);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (204, 'Debate', 'I disagree with you on this topic.', 14, 5);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (205, 'Appointment', 'Can I schedule an appointment for tomorrow?', 2, 10);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (206, 'Casual chat', 'How are you?', 5, 2);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (207, 'Support', 'I need your help.', 4, 7);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (208, 'Discussion', 'What do you think about this?', 11, 10);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (209, 'Debate', 'I have a different perspective on this.', 5, 9);
INSERT INTO Chat (CHT_ID, CHT_PURPOSE, CHT_DETAILS, USR_ID1, USR_ID2)
VALUES (210, 'Appointment', 'I would like to schedule a meeting.', 10, 6);



--Create table Message
CREATE TABLE Message (
    MSG_ID INT PRIMARY KEY,
    SENDER_ID INT,
    RECEIVER_ID INT,
    MESSAGE VARCHAR2(255),
    CHT_ID INT,
    FOREIGN KEY (CHT_ID) REFERENCES Chat(CHT_ID)
);


--INSERT INTO Message table
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (301, 2, 1, 'Hello, how are you?', 201);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (302, 7, 4, 'Can you please assist me with this issue?', 202);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (303, 9, 6, 'What are your thoughts on the new project?', 203);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (304, 14, 5, 'I have some concerns regarding the budget.', 204);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (305, 10, 9, 'Are we still meeting tomorrow?', 205);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (306, 2, 10, 'Hi, I''m doing well. Thanks for asking.', 206);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (307, 5, 2, 'Sure, what seems to be the problem?', 207);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (308, 11, 10, 'I believe it has great potential.', 208);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (309, 1, 10, 'Let''s discuss it further in the meeting.', 209);
INSERT INTO Message (MSG_ID, SENDER_ID, RECEIVER_ID, MESSAGE, CHT_ID)
VALUES (310, 10, 6, 'Yes, the meeting is still scheduled.', 210);



--Create table Calender
CREATE TABLE Calendar (
    CAL_ID INT PRIMARY KEY,
    USR_ID INT,
    CAL_TIME TIMESTAMP,
    CAL_DETAILS VARCHAR2(100),
    FOREIGN KEY (USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);


--INSERT INTO Calendar table
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (401, 2, TIMESTAMP '2024-04-30 09:00:00', 'Meeting with client');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (402, 4, TIMESTAMP '2024-05-01 10:30:00', 'Project deadline');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (403, 16, TIMESTAMP '2024-05-02 14:00:00', 'Team brainstorming session');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (404, 8, TIMESTAMP '2024-05-03 11:00:00', 'Budget review');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (405, 10, TIMESTAMP '2024-05-04 15:30:00', 'Training session');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (406, 1, TIMESTAMP '2024-05-05 08:30:00', 'Team building activity');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (407, 3, TIMESTAMP '2024-05-06 13:00:00', 'Marketing strategy meeting');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (408, 15, TIMESTAMP '2024-05-07 09:30:00', 'Product launch event');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (409, 7, TIMESTAMP '2024-05-08 16:00:00', 'Presentation rehearsal');
INSERT INTO Calendar (CAL_ID, USR_ID, CAL_TIME, CAL_DETAILS) VALUES (410, 19, TIMESTAMP '2024-05-09 10:00:00', 'Client feedback session');


--Create table Users
CREATE TABLE Users (
    USR_ID CHAR(6) PRIMARY KEY,
    USR_NAME VARCHAR2(30),
    USR_EMAIL VARCHAR2(30),
    USR_PHONE VARCHAR2(30),
    USR_INFORMATION VARCHAR2(100),
    USR_DETAILS VARCHAR2(100),
    SYS_USR_ID INT UNIQUE,
    FOREIGN KEY (SYS_USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);

--INSERT INTO Users table

INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR501', 'Ali', 'ali@example.com', '+90 555 123 4567', 'Turkey, Istanbul', 'Hello, I am Ali.',1);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR502', 'Ayşe', 'ayse@example.com', '+90 555 234 5678', 'Turkey, Ankara', 'Hello, I am Ayşe.',3);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR503', 'Mehmet', 'mehmet@example.com', '+90 555 345 6789', 'Turkey, Izmir', 'Hello, I am Mehmet.',7);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR504', 'Fatma', 'fatma@example.com', '+90 555 456 7890', 'Turkey, Adana', 'Hello, I am Fatma.',9);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR505', 'Mustafa', 'mustafa@example.com', '+90 555 567 8901', 'Turkey, Antalya', 'Hello, I am Mustafa.', 10);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR506', 'Zeynep', 'zeynep@example.com', '+90 555 678 9012', 'Turkey, Bursa', 'Hello, I am Zeynep.', 12);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR507', 'Emre', 'emre@example.com', '+90 555 789 0123', 'Turkey, Mersin', 'Hello, I am Emre.', 14);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR508', 'Elif', 'elif@example.com', '+90 555 890 1234', 'Turkey, Trabzon', 'Hello, I am Elif.', 16);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR509', 'Murat', 'murat@example.com', '+90 555 901 2345', 'Turkey, Gaziantep', 'Hello, I am Murat.', 17);
INSERT INTO Users (USR_ID, USR_NAME, USR_EMAIL, USR_PHONE, USR_INFORMATION, USR_DETAILS, SYS_USR_ID)
VALUES ('USR510', 'Gizem', 'gizem@example.com', '+90 555 012 3456', 'Turkey, Konya', 'Hello, I am Gizem.', 20);


--Create table Host 
CREATE TABLE Host (
    HST_ID CHAR(6) PRIMARY KEY,
    HST_NAME VARCHAR2(30),
    HST_ADDRESS VARCHAR2(100),
    HST_LOCATION VARCHAR2(30),
    USR_PHONE VARCHAR2(20),
    SYS_USR_ID INT UNIQUE,
    FOREIGN KEY (SYS_USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);

--INSERT INTO Host table
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST601', 'Ahmet Yılmaz', 'Büyükşehir Mah. Fatih Cad. No: 123', 'Istanbul', '+90 212 123 4567',4);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST602', 'Ayşe Kaya', 'Atatürk Bulv. No: 45', 'Ankara', '+90 312 234 5678',15);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST603', 'Mehmet Arslan', 'İzmir Mah. Gazi Cad. No: 78', 'Izmir', '+90 232 345 6789',6);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST604', 'Fatma Demir', 'Adana Sok. No: 56', 'Adana', '+90 322 456 7890',2);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST605', 'Mustafa Ak', 'Antalya Bulv. No: 34', 'Antalya', '+90 242 567 8901',8);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST606', 'Zeynep Yıldız', 'Uludağ Cd. No: 67', 'Bursa', '+90 224 678 9012', 11);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST607', 'Emre Kılıç', 'Mersin Blv. No: 78', 'Mersin', '+90 324 789 0123', 13);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST608', 'Elif Çelik', 'Karadeniz Cd. No: 89', 'Trabzon', '+90 462 890 1234', 5);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST609', 'Murat Taş', 'Gaziantep Blv. No: 90', 'Gaziantep', '+90 342 901 2345', 19);
INSERT INTO Host (HST_ID, HST_NAME, HST_ADDRESS, HST_LOCATION, USR_PHONE, SYS_USR_ID)
VALUES ('HST610', 'Gizem Gül', 'Mevlana Cd. No: 12', 'Konya', '+90 332 012 3456',17);


--Create table Listing
CREATE TABLE Listing (
    LST_ID CHAR(6) PRIMARY KEY,
    LST_TIME TIMESTAMP,
    LST_HOST_BY CHAR(6),
    LST_DETAILS VARCHAR(100),
    FOREIGN KEY (LST_HOST_BY) REFERENCES Host(HST_ID)
);

--INSERT INTO Listing table
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST001', TIMESTAMP '2024-04-30 12:00:00', 'HST604', 'Beautiful apartment with stunning views');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST002', TIMESTAMP '2024-04-29 15:30:00', 'HST609', 'Cozy room in the city center');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST003', TIMESTAMP '2024-05-01 10:00:00', 'HST610', 'Villa where you will feel at home');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST004', TIMESTAMP '2024-04-28 09:45:00', 'HST601', 'Luxury apartment with sea view');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST005', TIMESTAMP '2024-05-02 14:15:00', 'HST605', 'Wooden house surrounded by nature');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST006', TIMESTAMP '2024-04-30 17:20:00', 'HST602', 'Modern apartment in the heart of the city');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST007', TIMESTAMP '2024-05-01 08:00:00', 'HST601', 'Villa with views of an ancient city');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST008', TIMESTAMP '2024-04-29 11:30:00', 'HST609', 'Welcome to the village house for your holiday');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST009', TIMESTAMP '2024-04-28 13:45:00', 'HST607', 'Mountain house with unique views');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST010', TIMESTAMP '2024-05-02 09:00:00', 'HST606', 'Peaceful detached house with garden');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST011', TIMESTAMP '2024-04-09 02:00:00', 'HST608', 'Swimming Pool');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST012', TIMESTAMP '2024-07-12 02:50:00', 'HST603', 'Cricket Ground Attached');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST013', TIMESTAMP '2024-01-04 01:00:00', 'HST601', 'See view');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST014', TIMESTAMP '2024-04-23 09:00:00', 'HST610', 'Parking lote');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST015', TIMESTAMP '2024-05-03 16:30:00', 'HST607', 'Riverside cottage perfect for fishing enthusiasts');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST016', TIMESTAMP '2024-04-28 14:45:00', 'HST608', 'Chalet with fireplace and mountain views');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST017', TIMESTAMP '2024-05-02 11:20:00', 'HST604', 'Historic mansion with elegant interiors');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST018', TIMESTAMP '2024-04-30 10:15:00', 'HST605', 'Countryside retreat with panoramic landscapes');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST019', TIMESTAMP '2024-05-01 13:00:00', 'HST602', 'Ski resort lodge perfect for winter getaways');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST020', TIMESTAMP '2024-04-29 08:45:00', 'HST610', 'Secluded cabin in the forest for nature lovers');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST021', TIMESTAMP '2024-05-03 10:30:00', 'HST606', 'Beachfront bungalow with private access to the sea');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST022', TIMESTAMP '2024-04-28 17:00:00', 'HST608', 'Mountain chalet with hiking trails nearby');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST023', TIMESTAMP '2024-05-02 12:45:00', 'HST607', 'Rustic farmhouse with vineyard and olive grove');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST024', TIMESTAMP '2024-04-29 09:30:00', 'HST604', 'Spacious penthouse with city skyline views');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST025', TIMESTAMP '2024-05-01 15:20:00', 'HST609', 'Eco-friendly yurt nestled in the mountains');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST026', TIMESTAMP '2024-04-30 08:10:00', 'HST601', 'Colonial-style villa with tropical garden');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST027', TIMESTAMP '2024-05-03 11:50:00', 'HST610', 'Lakefront cabin perfect for fishing and boating');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST028', TIMESTAMP '2024-04-28 13:15:00', 'HST606', 'Traditional cottage with panoramic mountain views');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST029', TIMESTAMP '2024-05-02 16:40:00', 'HST603', 'Riverside cabin with access to hiking trails');
INSERT INTO Listing (LST_ID, LST_TIME, LST_HOST_BY, LST_DETAILS)
VALUES ('LST030', TIMESTAMP '2024-04-29 10:25:00', 'HST605', 'Secluded treehouse retreat for a unique getaway');





--Create table Property
CREATE TABLE Property (
    LST_ID CHAR(6) PRIMARY KEY,
    Type VARCHAR2(30) ,
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Property table
INSERT INTO Property (LST_ID, Type) VALUES ('LST002', 'Apartment');
INSERT INTO Property (LST_ID, Type) VALUES ('LST003', 'Room');
INSERT INTO Property (LST_ID, Type) VALUES ('LST009', 'Villa');
INSERT INTO Property (LST_ID, Type) VALUES ('LST019', 'House');
INSERT INTO Property (LST_ID, Type) VALUES ('LST023', 'House');
INSERT INTO Property (LST_ID, Type) VALUES ('LST006', 'House');
INSERT INTO Property (LST_ID, Type) VALUES ('LST029', 'Villa');
INSERT INTO Property (LST_ID, Type) VALUES ('LST011', 'House');
INSERT INTO Property (LST_ID, Type) VALUES ('LST016', 'House');
INSERT INTO Property (LST_ID, Type) VALUES ('LST017', 'House');



--Create table Location
CREATE TABLE Location (
    LST_ID CHAR(6) PRIMARY KEY,
    Type VARCHAR2(30) ,
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Location table
INSERT INTO Location (LST_ID, Type) VALUES ('LST001', 'Suburban');
INSERT INTO Location (LST_ID, Type) VALUES ('LST007', 'Beachfront');
INSERT INTO Location (LST_ID, Type) VALUES ('LST012', 'Rural');
INSERT INTO Location (LST_ID, Type) VALUES ('LST018', 'Historic District');
INSERT INTO Location (LST_ID, Type) VALUES ('LST010', 'Lakefront');
INSERT INTO Location (LST_ID, Type) VALUES ('LST022', 'City Center');
INSERT INTO Location (LST_ID, Type) VALUES ('LST026', 'Mountain View');
INSERT INTO Location (LST_ID, Type) VALUES ('LST008', 'Ocean View');
INSERT INTO Location (LST_ID, Type) VALUES ('LST014', 'Countryside');
INSERT INTO Location (LST_ID, Type) VALUES ('LST020', 'Forest');



--Create table Amenity
CREATE TABLE Amenity (
    LST_ID CHAR(6) PRIMARY KEY,
    Type VARCHAR2(30) ,
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Amenity table
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST030', 'Swimming Pool');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST025', 'Gym and Spa');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST004', 'Parking');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST021', 'Free Wi-Fi');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST013', 'Free Wi-Fi');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST005', 'Air Conditioning');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST024', 'Heating');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST015', 'Air Conditioning');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST028', 'Laundry Facilities');
INSERT INTO Amenity (LST_ID, Type) VALUES ('LST027', '24/7 Security');


--Create table Review 
CREATE TABLE Review (
    USR_ID INT,
    LST_ID CHAR(6),
    REV_DETAILS VARCHAR2(255),
    REV_DATE VARCHAR2(20), -- Adding REV_DATE column
    PRIMARY KEY (USR_ID, LST_ID),
    FOREIGN KEY (USR_ID) REFERENCES SystemUser(SYS_USR_ID),
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Review table
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (1, 'LST023', 'It was a fantastic stay.', 'May 24th 9:30 AM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (2, 'LST017', 'Great location, highly recommended.', 'May 25th 2:45 PM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (3, 'LST003', 'The host was very welcoming, thanks.', 'May 26th 11:20 AM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (4, 'LST004', 'The sea view was amazing.', 'May 27th 6:10 PM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (5, 'LST019', 'We had a peaceful holiday surrounded by nature.', 'May 28th 8:00 AM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (6, 'LST006', 'Very close to the city center, great location.', 'May 24th 4:55 PM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (7, 'LST029', 'Staying in a villa with views of an ancient city was extraordinary.', 'May 25th 10:15 AM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (8, 'LST011', 'Our village house holiday was very enjoyable.', 'May 26th 1:40 PM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (9, 'LST009', 'The mountain view from the house was breathtaking.', 'May 27th 7:25 AM');
INSERT INTO Review (USR_ID, LST_ID, REV_DETAILS, REV_DATE) VALUES (10, 'LST001', 'We had a wonderful holiday in the peaceful house with a garden.', 'May 28th 3:30 PM');



--Create table Promotion
CREATE TABLE Promotion (
    PRM_ID INT PRIMARY KEY,
    LST_ID CHAR(6),
    PRM_DETAILS VARCHAR2(100),
    PRM_AMOUNT DECIMAL,
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Promotion table
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (901, 'LST003', 'Special discount for early bookings', 20.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (902, 'LST021', 'Last-minute offer: Book now and get 10% off', 10.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (903, 'LST009', 'Weekend getaway promotion', 15.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (904, 'LST017', 'Extended stay discount', 25.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (905, 'LST025', 'Spring promotion: Enjoy 15% off', 15.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (906, 'LST001', 'Summer sale: Limited time offer', 20.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (907, 'LST013', 'Autumn escape: Book now and save', 30.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (908, 'LST008', 'Winter discount: Cozy up in our village house', 20.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (909, 'LST027', 'Christmas special: Celebrate the holidays in the mountains', 25.00);
INSERT INTO Promotion (PRM_ID, LST_ID, PRM_DETAILS, PRM_AMOUNT) VALUES (910, 'LST030', 'New Year''s Eve promotion', 30.00);


--Create table GUEST
CREATE TABLE Guest (
    GST_ID CHAR(6) PRIMARY KEY,
    USR_ID CHAR(6),
    GST_BOOKING_COUNT INT,
    GST_REVIEWS VARCHAR2(30)
);

--INSERT INTO Guest table
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST001', 'USR003', 3, 'Great experience');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST002', 'USR003', 2, 'Lovely place');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST003', 'USR003', 4, 'Excellent service');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST004', 'USR003', 5, 'Friendly staff');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST005', 'USR003', 3, 'Comfortable stay');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST006', 'USR003', 4, 'Beautiful view');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST007', 'USR003', 2, 'Great location');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST008', 'USR003', 6, 'Amazing food');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST009', 'USR003', 4, 'Cozy atmosphere');
INSERT INTO Guest (GST_ID, USR_ID, GST_BOOKING_COUNT, GST_REVIEWS)
VALUES ('GST010', 'USR003', 3, 'Helpful hosts');


--Create table Booking
CREATE TABLE Booking (
    BOK_ID INT PRIMARY KEY,
    USR_ID INT,
    LST_ID CHAR(6),
    BOK_START_DATE TIMESTAMP,
    BOK_END_DATE TIMESTAMP,
    BOK_DETAILS VARCHAR2(100),
    BOK_STATUS VARCHAR2(30),
    GST_ID CHAR(6),
    FOREIGN KEY (USR_ID) REFERENCES SystemUser(SYS_USR_ID),
    FOREIGN KEY (GST_ID) REFERENCES Guest(GST_ID),
    FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

--INSERT INTO Booking table
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1001, 2, 'LST001', TIMESTAMP '2024-05-01 12:00:00', TIMESTAMP '2024-05-08 12:00:00', 'Looking forward to a great stay.', 'Confirmed', 'GST001');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1002, 4, 'LST002', TIMESTAMP '2024-05-01 10:00:00', TIMESTAMP '2024-05-06 10:00:00', 'Need a place for a short stay.', 'Pending', 'GST002');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1003, 6, 'LST003', TIMESTAMP '2024-05-01 14:00:00', TIMESTAMP '2024-05-11 14:00:00', 'Excited to stay at this villa.', 'Confirmed', 'GST003');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1004, 8, 'LST004', TIMESTAMP '2024-05-01 09:00:00', TIMESTAMP '2024-05-04 09:00:00', 'Planning a weekend getaway.', 'Confirmed', 'GST004');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1005, 10, 'LST005', TIMESTAMP '2024-05-01 15:30:00', TIMESTAMP '2024-05-08 15:30:00', 'Looking for a peaceful retreat.', 'Pending', 'GST005');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1006, 1, 'LST006', TIMESTAMP '2024-05-01 17:20:00', TIMESTAMP '2024-05-05 17:20:00', 'Attending a business conference.', 'Confirmed', 'GST006');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1007, 3, 'LST007', TIMESTAMP '2024-05-01 08:00:00', TIMESTAMP '2024-05-07 08:00:00', 'Exploring the ancient city.', 'Pending', 'GST007');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1008, 5, 'LST008', TIMESTAMP '2024-05-01 11:30:00', TIMESTAMP '2024-05-09 11:30:00', 'Enjoying a village holiday.', 'Confirmed', 'GST008');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1009, 7, 'LST009', TIMESTAMP '2024-05-01 13:45:00', TIMESTAMP '2024-05-10 13:45:00', 'Admiring the mountain view.', 'Confirmed', 'GST009');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1010, 9, 'LST010', TIMESTAMP '2024-05-01 09:00:00', TIMESTAMP '2024-05-03 09:00:00', 'Relaxing in the garden.', 'Confirmed', 'GST010');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1011, 15, 'LST025', TIMESTAMP '2024-06-01 17:20:00', TIMESTAMP '2024-06-05 17:20:00', 'Attending a business conference.', 'Confirmed', 'GST002');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1012, 14, 'LST019', TIMESTAMP '2024-06-01 10:00:00', TIMESTAMP '2024-06-06 10:00:00', 'Need a place for a short stay.', 'Confirmed', 'GST005');
INSERT INTO Booking (BOK_ID, USR_ID, LST_ID, BOK_START_DATE, BOK_END_DATE, BOK_DETAILS, BOK_STATUS, GST_ID)
VALUES (1013, 18, 'LST014', TIMESTAMP '2024-06-01 09:00:00', TIMESTAMP '2024-06-04 09:00:00', 'Planning a weekend getaway.', 'Confirm' , 'GST007');


--Create table Payment
CREATE TABLE Payment (
    PAY_TRANS_ID INT PRIMARY KEY,
    PAY_METHOD VARCHAR2(30),
    PAY_AMOUNT DECIMAL(6,2),
    BOK_ID INT,
    SYS_USR_ID INT,
    FOREIGN KEY (BOK_ID) REFERENCES Booking(BOK_ID),
    FOREIGN KEY (SYS_USR_ID) REFERENCES SystemUser(SYS_USR_ID)
);


--INSERT INTO Payment table
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5001, 'Credit Card', 150.00, 1013, 18);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5002, 'Bank Transfer', 200.00, 1012, 14);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5003, 'PayPal', 300.00, 1003, 6);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5004, 'Credit Card', 250.00, 1009, 7);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5005, 'Bank Transfer', 180.00, 1001, 2);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5006, 'Credit Card', 120.00, 1006, 1);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5007, 'Credit Card', 180.00, 1011, 15);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5008, 'Bank Transfer', 220.00, 1008, 5);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5009, 'Credit Card', 180.00, 1010, 9);
INSERT INTO Payment (PAY_TRANS_ID, PAY_METHOD, PAY_AMOUNT, BOK_ID, SYS_USR_ID)
VALUES (5010, 'Bank Transfer', 220.00, 1009, 7);

-- Inserting an Additional Table and Establishing a Relation
CREATE TABLE ServiceFeature (
  SF_ID INT PRIMARY KEY,
  LST_ID CHAR(6),
  FEATURE_NAME VARCHAR2(100),
  DESCRIPTION VARCHAR2(255),
  FOREIGN KEY (LST_ID) REFERENCES Listing(LST_ID)
);

-- Sample INSERT Statement for ServiceFeature
INSERT INTO ServiceFeature (SF_ID, LST_ID, FEATURE_NAME, DESCRIPTION) VALUES
(1, 'LST001', 'Wi-Fi', 'High-speed wireless internet available');

INSERT INTO ServiceFeature (SF_ID, LST_ID, FEATURE_NAME, DESCRIPTION) VALUES
(2, 'LST002', 'Breakfast Included', 'Complimentary breakfast for two');

-- Inserting an Additional Column
ALTER TABLE Listing ADD (
  LAST_MODIFIED TIMESTAMP DEFAULT SYSDATE
);

-- Updating the LAST_MODIFIED field when the listing is updated
CREATE OR REPLACE TRIGGER UpdateListingTimestamp
BEFORE UPDATE ON Listing
FOR EACH ROW
BEGIN
  :NEW.LAST_MODIFIED := SYSDATE;
END;

-- Dropping an Existing Column
ALTER TABLE SystemUser DROP COLUMN SYS_USR_SECURITY_QUESTION;

-- Creating an updatable view 
CREATE OR REPLACE VIEW ListingsOverview AS
SELECT l.LST_ID, l.LST_DETAILS, b.BOK_ID, b.BOK_START_DATE, b.BOK_END_DATE, b.BOK_STATUS, p.PAY_AMOUNT, p.PAY_METHOD
FROM Listing l
JOIN Booking b ON l.LST_ID = b.LST_ID
JOIN Payment p ON b.BOK_ID = p.BOK_ID
WHERE b.BOK_STATUS = 'Confirmed';

CREATE OR REPLACE TRIGGER UpdateListingsOverview
INSTEAD OF UPDATE ON ListingsOverview
FOR EACH ROW
BEGIN
  UPDATE Booking
  SET BOK_START_DATE = :NEW.BOK_START_DATE,
      BOK_END_DATE = :NEW.BOK_END_DATE,
      BOK_STATUS = :NEW.BOK_STATUS
  WHERE BOK_ID = :OLD.BOK_ID;

  UPDATE Payment
  SET PAY_AMOUNT = :NEW.PAY_AMOUNT,
      PAY_METHOD = :NEW.PAY_METHOD
  WHERE BOK_ID = :OLD.BOK_ID;
END;

-- Create the BookingAudit table
CREATE TABLE BookingAudit (
    AUDIT_ID     NUMBER GENERATED ALWAYS AS IDENTITY,
    BOK_ID       NUMBER,
    USER_ID      NUMBER,
    LST_ID       CHAR(6),
    ACTION_TYPE  VARCHAR2(20),
    ACTION_DATE  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_BookingAudit PRIMARY KEY (AUDIT_ID)
);

-- Trigger 1: Audit Log for New Bookings
CREATE OR REPLACE TRIGGER BookingAuditLog
AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
  INSERT INTO BookingAudit(BOK_ID, USER_ID, LST_ID, ACTION_TYPE, ACTION_DATE)
  VALUES (:NEW.BOK_ID, :NEW.USR_ID, :NEW.LST_ID, 'INSERT', SYSDATE);
END;

-- Trigger 2: Automatic Review Request
CREATE OR REPLACE TRIGGER ReviewRequest
AFTER UPDATE ON Booking
FOR EACH ROW
WHEN (NEW.BOK_STATUS = 'Completed')
BEGIN
  INSERT INTO Notification(USR_ID, NOT_DETAILS)
  VALUES (:NEW.USR_ID, 'Thank you for staying with us. Please leave a review.');
END;

-- Procedure 1: Cancel Booking
CREATE OR REPLACE PROCEDURE CancelBooking(p_bok_id INT)
AS
BEGIN
  UPDATE Booking
  SET BOK_STATUS = 'Cancelled'
  WHERE BOK_ID = p_bok_id;

  INSERT INTO BookingAudit(BOK_ID, ACTION_TYPE, ACTION_DATE)
  VALUES (p_bok_id, 'CANCEL', SYSDATE);
END;

-- Procedure 2: Update User Profile
CREATE OR REPLACE PROCEDURE UpdateUserProfile(p_usr_id INT, p_email VARCHAR, p_phone VARCHAR)
AS
BEGIN
  UPDATE Users
  SET USR_EMAIL = p_email, USR_PHONE = p_phone
  WHERE USR_ID = p_usr_id;
END;

--Part 3:

-- Query #1
SELECT l.LST_ID, l.LST_DETAILS, COUNT(b.BOK_ID) AS TotalBookings
FROM Listing l
JOIN Booking b ON l.LST_ID = b.LST_ID
GROUP BY l.LST_ID, l.LST_DETAILS
ORDER BY TotalBookings DESC
FETCH FIRST 5 ROWS ONLY;

-- Query #2
SELECT u.SYS_USR_ID, u.SYS_USR_NAME, b.BOK_ID
FROM SystemUser u
JOIN Booking b ON u.SYS_USR_ID = b.USR_ID
LEFT JOIN Payment p ON b.BOK_ID = p.BOK_ID
WHERE p.PAY_TRANS_ID IS NULL;

-- Query #3
SELECT prm.PRM_ID, prm.PRM_DETAILS, prm.PRM_AMOUNT, l.LST_ID, l.LST_DETAILS
FROM Promotion prm
JOIN Listing l ON prm.LST_ID = l.LST_ID;

-- Query #4
SELECT h.HST_ID, h.HST_NAME
FROM Host h
LEFT JOIN Listing l ON h.HST_ID = l.LST_HOST_BY AND l.LST_ID IS NULL;

--Query #5
SELECT b.BOK_ID, b.BOK_START_DATE, b.BOK_END_DATE, p.PAY_TRANS_ID, p.PAY_METHOD, p.PAY_AMOUNT
FROM Booking b
JOIN Payment p ON b.BOK_ID = p.BOK_ID
WHERE p.PAY_TRANS_ID IS NOT NULL
ORDER BY p.PAY_AMOUNT DESC;

-- Query #6
SELECT LST_ID, LST_DETAILS
FROM Listing
WHERE LST_ID NOT IN (SELECT LST_ID FROM Amenity);

-- Query #7
SELECT b.BOK_ID, b.BOK_START_DATE, r.REV_DETAILS, REV_DATE
FROM Booking b
JOIN Review r ON b.USR_ID = r.USR_ID;

-- Query #8
SELECT a.TYPE AS Amenity,
COUNT(*) AS Frequency
FROM Amenity a
GROUP BY a.TYPE
ORDER BY 
COUNT(*) DESC;

-- Query #9
SELECT g.GST_ID, g.USR_ID, COUNT(b.BOK_ID) AS TotalBookings
FROM Guest g
JOIN Booking b ON g.GST_ID = b.GST_ID
WHERE b.BOK_START_DATE >= CURRENT_DATE - INTERVAL '1' YEAR
GROUP BY g.GST_ID, g.USR_ID
HAVING COUNT(b.BOK_ID) >= 1;

-- Query #10
SELECT b.BOK_ID, g.USR_ID, l.LST_ID
FROM Booking b
JOIN Guest g ON b.GST_ID = g.GST_ID
JOIN Listing l ON b.LST_ID = l.LST_ID
LEFT JOIN Review r ON b.USR_ID = r.USR_ID AND b.LST_ID = r.LST_ID
WHERE b.BOK_END_DATE < CURRENT_DATE AND r.USR_ID IS NULL;

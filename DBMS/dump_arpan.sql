-- Create tables

-- Create table hotel
CREATE TABLE hotel005 (
  hotel_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(20),
  address VARCHAR2(30)
);

-- Create table room
CREATE TABLE room005 (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  type VARCHAR2(10),
  price NUMBER(10),
  PRIMARY KEY(room_no, hotel_no)
);

-- Create table guests
CREATE TABLE guest005 (
  guest_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(30),
  address VARCHAR2(30)
);

-- Create table booking
CREATE TABLE booking005 (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  guest_no VARCHAR2(10),
  date_from DATE,
  date_to DATE,
  PRIMARY KEY(hotel_no, guest_no, date_from)
);

-- Add foreign key constraints to the tables

-- For table room, constraint is hotel_key, hotel_no is the foreign key
-- Reference hotel table
ALTER TABLE room005
ADD CONSTRAINT hotel_key_005
FOREIGN KEY (hotel_no) REFERENCES hotel005(hotel_no);

-- For table booking, constraint is room_key, room_no and hotel_no are both foreign keys
-- Reference room table
ALTER TABLE booking005
ADD CONSTRAINT room_key_005
FOREIGN KEY (room_no, hotel_no) REFERENCES room005(room_no, hotel_no);

-- For table booking, constraint is guest_key, guest_no is the foreign key
-- Reference guest table
ALTER TABLE booking005
ADD CONSTRAINT guest_key_005
FOREIGN KEY (guest_no) REFERENCES guest005(guest_no);

-- Insert records in tables

-- Insert into hotel
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H1', 'PURI', 'PURI');
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H2','TAJ', 'MUMBAI');
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H3', 'SONALI', 'PURI');
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H4', 'ITC', 'KOLKATA');
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H5', 'PARK', 'CHENNAI');
INSERT INTO hotel005 (hotel_no, name, address) VALUES ('H6', 'SAMUDRA', 'CHENNAI');

-- Insert into room
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R1', 'H1', 'AC', '2000');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R2', 'H1', 'NONAC', '1000');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R1', 'H2', 'DELUX', '2500');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R2', 'H2', 'NONAC', '1000');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R3', 'H4', 'AC', '1800');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R4', 'H5', 'DELUX', '4000');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R2', 'H3', 'AC', '3900');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R1', 'H6', 'AC', '4000');
INSERT INTO room005 (room_no, hotel_no, type, price) VALUES ('R2', 'H6', 'NONAC', '1500');

-- Insert into guest
INSERT INTO guest005 (guest_no, name, address) VALUES ('G1', 'RAM', 'MUMBAI');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G2', 'SIMA', 'KOLKATA');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G3', 'RAHUL', 'KOLKATA');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G4', 'MILI', 'KOLKATA');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G5', 'SMITH', 'CHENNAI');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G6', 'JONES', 'CHENNAI');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G7', 'RIMI', 'KOLKATA');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G8', 'REKHA', 'CHENNAI');
INSERT INTO guest005 (guest_no, name, address) VALUES ('G9', 'RISHI', 'PURI');

-- Insert into booking
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R1','H1', 'G1', '01-JAN-2013','08-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2', 'H1', 'G2', '12-JAN-2013', '18-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R1','H2', 'G3', '01-JAN-2013', '08-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2', 'H2', 'G4', '18-JAN-2013', '28-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R3','H4', 'G5', '10-JAN-2013', '18-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R4', 'H5', 'G6', '11-JAN-2013', '18-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2','H3', 'G7', '21-JAN-2013', '28-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R1','H6', 'G8', '12-JAN-2013', '20-JAN-2013');
INSERT INTO booking005 (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2','H6', 'G9', '21-JAN-2013', '28-JAN-2013');
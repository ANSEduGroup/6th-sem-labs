-- Create tables

-- Create table hotel
CREATE TABLE hotel_006 (
  hotel_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(20),
  address VARCHAR2(30)
);

-- Create table room
CREATE TABLE room_006 (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  type VARCHAR2(10),
  price NUMBER(10),
  PRIMARY KEY(room_no, hotel_no)
);

-- Create table guests
CREATE TABLE guest_006 (
  guest_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(30),
  address VARCHAR2(30),
  age NUMBER(10)
);

-- Create table booking
CREATE TABLE booking_006 (
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
ALTER TABLE room_006
ADD CONSTRAINT hotel_key_006
FOREIGN KEY (hotel_no) REFERENCES hotel_006(hotel_no);

-- For table booking, constraint is room_key, room_no and hotel_no are both foreign keys
-- Reference room table
ALTER TABLE booking_006
ADD CONSTRAINT room_key_006
FOREIGN KEY (room_no, hotel_no) REFERENCES room_006(room_no, hotel_no);

-- For table booking, constraint is guest_key, guest_no is the foreign key
-- Reference guest table
ALTER TABLE booking_006
ADD CONSTRAINT guest_key_006
FOREIGN KEY (guest_no) REFERENCES guest_006(guest_no);

-- Insert records in tables

-- Insert into hotel
INSERT INTO HOTEL_006 VALUES ('H1','GRAND','KOLKATA');
INSERT INTO HOTEL_006 VALUES ('H2','TAJ','MUMBAI');
INSERT INTO HOTEL_006 VALUES ('H3','PURI','PURI');
INSERT INTO HOTEL_006 VALUES ('H4','ITC','KOLKATA');
INSERT INTO HOTEL_006 VALUES ('H5','PARK','CHENNAI');
INSERT INTO HOTEL_006 VALUES ('H6','ITC','MUMBAI');
INSERT INTO HOTEL_006 VALUES ('H7','SONALI','PURI');

-- Insert into room
INSERT INTO ROOM_006 VALUES ('R1','H1','AC',2000);
INSERT INTO ROOM_006 VALUES ('R2','H1','NONAC',1000);
INSERT INTO ROOM_006 VALUES ('R1','H2','DELUX',2500);
INSERT INTO ROOM_006 VALUES ('R2','H2','NONAC',1000);
INSERT INTO ROOM_006 VALUES ('R3','H4','AC',1800);
INSERT INTO ROOM_006 VALUES ('R4','H5','DELUX',3000);
INSERT INTO ROOM_006 VALUES ('R2','H3','AC',2900);
INSERT INTO ROOM_006 VALUES ('R1','H6','AC',3500);
INSERT INTO ROOM_006 VALUES ('R5','H7','NONAC',900);

-- Insert into guest
INSERT INTO guest_006 VALUES ('G1', 'RAM', 'MUMBAI', '43');
INSERT INTO guest_006 VALUES ('G2', 'SHYAM', 'KOLKATA', '32');
INSERT INTO guest_006 VALUES ('G3', 'JADU', 'KOLKATA', '26');
INSERT INTO guest_006 VALUES ('G4', 'MADHU', 'KOLKATA', '48');
INSERT INTO guest_006 VALUES ('G5', 'SMITH', 'CHENNAI', '55');
INSERT INTO guest_006 VALUES ('G6', 'JONES', 'CHENNAI', '39');
INSERT INTO guest_006 VALUES ('G7', 'RIMI', 'KOLKATA', '38');
INSERT INTO guest_006 VALUES ('G8', 'RAJA', 'PURI', '24');
INSERT INTO guest_006 VALUES ('G9', 'SIMA', 'MUMBAI', '62');

-- Insert into booking
INSERT INTO booking_006 VALUES ('R1','H1', 'G1', '01-JAN-2016','08-JAN-2016');
INSERT INTO booking_006 VALUES ('R2', 'H1', 'G2', '12-JAN-2016', '18-JAN-2016');
INSERT INTO booking_006 VALUES ('R1','H2', 'G3', '01-FEB-2016', '08-FEB-2016');
INSERT INTO booking_006 VALUES ('R2', 'H2', 'G4', '18-JAN-2016', '28-JAN-2016');
INSERT INTO booking_006 VALUES ('R3','H4', 'G5', '10-MAR-2016', '18-MAR-2016');
INSERT INTO booking_006 VALUES ('R4', 'H5', 'G6', '11-JAN-2016', '18-JAN-2016');
INSERT INTO booking_006 VALUES ('R2','H3', 'G7', '21-FEB-2016', '28-FEB-2016');
INSERT INTO booking_006 VALUES ('R1','H6', 'G8', '22-FEB-2016', '27-FEB-2016');
CREATE TABLE hotel (
  hotel_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(20),
  address VARCHAR2(30)
);

CREATE TABLE room (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  type VARCHAR2(10),
  price NUMBER(10),
  PRIMARY KEY(room_no, hotel_no)
);

CREATE TABLE booking (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  guest_no VARCHAR2(10),
  date_from DATE,
  date_to DATE,
  PRIMARY KEY(hotel_no, guest_no, date_from)
);

CREATE TABLE guest (
  guest_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(30),
  address VARCHAR2(30)
);

INSERT INTO hotel (hotel_no, name, address) VALUES ( 'H1','GRAND', 'KOLKATA');
INSERT INTO hotel (hotel_no, name, address) VALUES ( 'H2', 'TAJ', 'MUMBAI');
INSERT INTO hotel (hotel_no, name, address) VALUES ( 'H3', 'PURI', 'PURI');
INSERT INTO hotel (hotel_no, name, address) VALUES ( 'H4', 'ITC', 'KOLKATA');
INSERT INTO hotel (hotel_no, name, address) VALUES ( 'H5', 'PARK', 'CHENNAI');

INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R1','H1', 'AC', '2000');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R2', 'H1', 'NONAC','1000');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R1','H2', 'DELUX', '2500');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R2', 'H2', 'NONAC','1000');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R3','H4', 'AC', '1800');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R4', 'H5', 'DELUX','3000');
INSERT INTO room (room_no, hotel_no, type, price) VALUES ('R2','H3', 'AC', '2900');

INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R1','H1', 'G1', '01-JAN-2013','08-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2', 'H1', 'G2', '12-JAN-2013', '18-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R1','H2', 'G3', '01-JAN-2013', '08-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2', 'H2', 'G4', '18-JAN-2013', '28-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R3','H4', 'G5', '10-JAN-2013', '18-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R4', 'H5', 'G6', '11-JAN-2013', '18-JAN-2013');
INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES ('R2','H3', 'G7', '21-JAN-2013', '28-JAN-2013');

INSERT INTO guest (guest_no, name, address) VALUES ('G1', 'RAM', 'MUMBAI');
INSERT INTO guest (guest_no, name, address) VALUES ('G2', 'SHYAM', 'KOLKATA');
INSERT INTO guest (guest_no, name, address) VALUES ('G3', 'JADU', 'KOLKATA');
INSERT INTO guest (guest_no, name, address) VALUES ('G4', 'MADHU', 'KOLKATA');
INSERT INTO guest (guest_no, name, address) VALUES ('G5', 'SMITH', 'CHENNAI');
INSERT INTO guest (guest_no, name, address) VALUES ('G6', 'JONES', 'CHENNAI');
INSERT INTO guest (guest_no, name, address) VALUES ('G7', 'RIMI', 'KOLKATA');
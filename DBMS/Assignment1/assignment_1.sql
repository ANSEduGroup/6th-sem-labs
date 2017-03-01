# Create table hotel

CREATE TABLE hotel_006 (
  hotel_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(20),
  address VARCHAR2(30)
);


CREATE TABLE room_006 (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  type VARCHAR2(10),
  price NUMBER(10),
  PRIMARY KEY(room_no, hotel_no)
);


CREATE TABLE booking_006 (
  room_no VARCHAR2(10),
  hotel_no VARCHAR2(10),
  guest_no VARCHAR2(10),
  date_from DATE,
  date_to DATE,
  PRIMARY KEY(hotel_no, guest_no, date_from)
);


CREATE TABLE guest_006 (
  guest_no VARCHAR2(10) PRIMARY KEY,
  name VARCHAR2(30),
  address VARCHAR2(30),
  age NUMBER(10)
);

ALTER TABLE hotel_006 ADD (status VARCHAR(10));

ALTER TABLE guest_006 MODIFY name VARCHAR(30);

RENAME hotel_006 TO cityhotel_006;

DROP TABLE room_006;

DESC hotel_006;

DESC guest_006;
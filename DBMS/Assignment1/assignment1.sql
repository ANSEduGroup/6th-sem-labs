# Question 1

CREATE TABLE hotel (
  hotel_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(20),
  address VARCHAR(30)
);

# Question 2

CREATE TABLE room (
  room_no VARCHAR(10),
  hotel_no VARCHAR(10),
  type VARCHAR(10),
  price INT,
  PRIMARY KEY(room_no, hotel_no)
);

# Question 3

CREATE TABLE booking (
  hotel_no VARCHAR(10),
  guest_no VARCHAR(10),
  date_from DATE,
  date_to DATE,
  room_no VARCHAR(10),
  PRIMARY KEY(hotel_no, guest_no, date_from)
);

# Question 4

CREATE TABLE guest (
  guest_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(30),
  address VARCHAR(30)
);

# Question 5

ALTER TABLE hotel ADD (status VARCHAR(10));

# Question 6

ALTER TABLE guest MODIFY name VARCHAR(30);

# Question 7

RENAME TABLE hotel TO cityhotel;

# Question 8

DROP TABLE room;

# Question 9

DESC hotel;

# Question 10

DESC guest;

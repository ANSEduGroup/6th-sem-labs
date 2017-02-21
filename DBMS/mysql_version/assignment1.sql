# Question 1

CREATE TABLE hotel_006 (
  hotel_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(20),
  address VARCHAR(30)
);

# Question 2

CREATE TABLE room_006 (
  room_no VARCHAR(10),
  hotel_no VARCHAR(10),
  type VARCHAR(10),
  price INT,
  PRIMARY KEY(room_no, hotel_no)
);

# Question 3

CREATE TABLE booking_006 (
  hotel_no VARCHAR(10),
  guest_no VARCHAR(10),
  date_from DATE,
  date_to DATE,
  room_no VARCHAR(10),
  PRIMARY KEY(hotel_no, guest_no, date_from)
);

# Question 4

CREATE TABLE guest_006 (
  guest_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(30),
  address VARCHAR(30)
);

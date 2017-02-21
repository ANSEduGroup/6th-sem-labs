# Aggregate Functions
# How many hotels are there?

SELECT count(hotel_no) FROM hotel;

# What is the average price of a room

SELECT AVG(price) FROM room;

# How many different guests have made booking in JAN

SELECT guest_no FROM booking
WHERE MONTH(date_from) = 1;

# Or this

SELECT COUNT(DISTINCT guest_no) FROM booking
WHERE MONTH(date_from) = 1;

# Subquery and Join

# List the price and type of all room at the GRAND hotel.

SELECT room_no, type, price FROM room WHERE hotel_no = (SELECT hotel_no FROM hotel WHERE name='GRAND');

# List all guest names who booked PURI hotel

SELECT name FROM guest WHERE guest_no = (
  SELECT guest_no FROM booking WHERE hotel_no = (
    SELECT hotel_no FROM hotel WHERE name = 'PURI'
  )
);

# List hotels where Jadu stays

SELECT hotel.hotel_no, hotel.name FROM hotel
INNER JOIN (booking CROSS JOIN guest) ON (
    booking.hotel_no = hotel.hotel_no
    AND
    booking.guest_no = guest.guest_no
    AND
    guest.name = 'JADU'
);
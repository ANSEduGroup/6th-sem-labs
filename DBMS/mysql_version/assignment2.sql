# Q1. List all the hotels in Kolkata

SELECT * FROM hotel WHERE(hotel.address = 'KOLKATA');

# Q2. List all the room details of hotel H1

SELECT * FROM room WHERE(hotel_no = 'H1');

# Q3. List all the guests from Chennai

SELECT name FROM guest WHERE(address = 'CHENNAI');

# Q4. List all the guest numbers who stayed from 01-01-2013 to 08-01-2013

SELECT guest_no FROM booking WHERE((date_from='2013-01-01') AND (date_to='2013-01-08'));

# Q5. List the room details whose price is > 2000

SELECT * FROM room WHERE (price > '2000');
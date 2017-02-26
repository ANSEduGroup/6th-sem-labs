# Show all constraints of college database

select * from information_schema.table_constraints
where table_schema = 'college';

# Assignment 2
# Q1. List all the hotels in Kolkata

SELECT * FROM hotel_006 WHERE(address = 'KOLKATA');

# Q2. List all the room details of hotel H1

SELECT * FROM room_006 WHERE(hotel_no = 'H1');

# Q3. List all the guests from Chennai

SELECT name, address FROM guest_006 WHERE(address != 'CHENNAI');

# Q4. List all the guest numbers who stayed from 01-01-2013 to 08-01-2013

SELECT guest_no FROM booking_006 WHERE((date_from='2016-01-01') AND (date_to='2016-01-08'));

# Q5. List the room details whose price is > 2000

SELECT * FROM room_006 WHERE (price > '2000');
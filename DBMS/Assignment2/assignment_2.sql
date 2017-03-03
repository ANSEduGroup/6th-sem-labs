-- Show constraints
select constraint_name, constraint_type, table_name from user_constraints;

-- Assignment 2

SELECT * FROM hotel_006
WHERE address = 'KOLKATA';

SELECT * FROM room_006
WHERE hotel_no = 'H1';

SELECT name FROM guest_006
WHERE address = 'CHENNAI';

SELECT guest_no FROM booking_006
WHERE date_from = '01-JAN-2016' AND date_to = '08-JAN-2016';

SELECT * FROM room_006
WHERE price > 2000 AND price < 3000;

SELECT NAME FROM GUEST_006
WHERE AGE < 50 AND AGE > 30;
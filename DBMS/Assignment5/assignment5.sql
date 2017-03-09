-- Check Constraint
/*
select
  constraint_name as "Name",
  constraint_type as "Type",
  table_name as "Table"
from user_constraints
where
  table_name = 'HOTEL_006' or
  table_name = 'ROOM_006' or
  table_name = 'BOOKING_006' or
  table_name = 'GUEST_006';
*/
set linesize 100;
set pagesize 200;

-- Alter table room with check constraint price >= 100
alter table room_006
add constraint price_check_006 check (price >= 100);

-- Check constraint date from < date to
alter table booking_006
add constraint date_check_006 check (date_from < date_to);

-- guest age > 18
alter table guest_006
add constraint age_check_006 check (age >= 18);

-- TO_CHAR

-- Date to and date from in the form of  (DD/MM/YYYY)
select
  guest_006.name as "Guest Name",
  to_char(booking_006.date_from, 'DD/MM/YYYY') as "Date From",
  to_char(booking_006.date_to, 'DD/MM/YYYY') as "Date To"
  from booking_006, guest_006
where booking_006.guest_no = guest_006.guest_no;

-- Price in the format (9,999.99)
select
  room_no as "Room No",
  hotel_no as "Hotel No",
  type as "Type",
  to_char(price, '9,999.99')
from room_006;

-- Subquery

-- Price of the room is more than the averge price of other rooms
select * from room_006
where price > (select avg(price) from room_006);

-- date from is before madhu
select * from BOOKING_006
WHERE DATE_FROM < (select DATE_FROM from BOOKING_006
	where GUEST_NO = (SELECT GUEST_NO from GUEST_006
		where NAME = 'MADHU'));

-- select hotel where address is equal to grand address
select * from HOTEL_006
where ADDRESS = (SELECT ADDRESS from HOTEL_006 WHERE name = 'GRAND');

-- Guests who live where shyam lives
select * from guest_006
where address = (select address from guest_006 where name = 'SHYAM');

-- Guests who are younger than RAM
select * from guest_006
where age < (select age from guest_006 where name = 'RAM');

-- Guests whose age is more than avg age of all guests
select * from guest_006
where age > (select avg(age) from guest_006);

-- Guests whose age is less than avg age of all guests
select * from guest_006
where age < (select avg(age) from guest_006);
-- Check Constraint
-- select constraint_name, constraint_type, table_name from user_constraints;

-- 1
alter table room_006
add constraint price_check_006 check (price >= 100);

-- 2
alter table booking_006
add constraint date_check_006 check (date_from < date_to);

--3
alter table guest_006
add constraint age_check_006 check (age >= 18);

-- TO_CHAR

--1
select
  guest_006.name,
  to_char(booking_006.date_from, 'DD/MM/YYYY') as "Date From",
  to_char(booking_006.date_to, 'DD/MM/YYYY') as "Date To"
  from booking_006, guest_006
where booking_006.guest_no = guest_006.guest_no;

--2


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

-- 5
select * from guest_006
where age < (select age from guest_006 where name = 'RAM');

-- 6
select * from guest_006
where age > (select avg(age) from guest_006);

-- 7
select * from guest_006
where age < (select avg(age) from guest_006);
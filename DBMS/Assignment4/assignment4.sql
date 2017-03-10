set linesize 100;
set pagesize 200;

-- Order by

-- List hotel names in descending order of names
select * from hotel_006 order by name desc;

-- List the rooms in ascending order of prices
select * from room_006 order by price asc;

-- List the guest details in descending order of names
select * from guest_006 order by name desc;

-- List the guest names in ascending order of their ages
select * from guest_006 order by age asc;

-- Pattern Matching

-- Select the guests whose names start with 'R'
select name from guest_006
where name like 'R%';

-- Select the guests whose names have 2nd character 'O' or 'H'
select name from guest_006
where name like '_O%' or
name like '_H%';

-- Select the guests whose name begins with 'J' and a 4 letter word
select * from guest_006
where name like 'J___';

-- Select the hotels whose address has 'R' as the 3rd character
select * from hotel_006
where name like '__R%';

-- List the guest names whose names end either with 'U' or 'A'
select name from guest_006
where name like '%U' or
name like '%A';

-- Range Searching

-- List the room with price between 2000 and 3000
select * from room_006
where price between 2000 and 3000;

-- Select the guest names who booked hotel from 1st Jan to 10th Jan
select guest_006.name, booking_006.date_from from booking_006, guest_006
where guest_006.guest_no = booking_006.guest_no
and date_from between '01-JAN-2016' and '10-JAN-2016';

-- List the guest names and ages whose age is between 30 and 45
select name, age from guest_006
where age between 30 and 45;

-- IN and NOT IN

-- Select the guest named RAM, SMITH, JONES
select name from guest_006
where name in ('RAM','SMITH','JONES');

-- Select the hotel other than PURI, TAJ
select * from hotel_006
where name not in ('PURI','TAJ');

-- Select the guest whose address is KOLKATA, CHENNAI
select * from guest_006
where address in ('KOLKATA', 'CHENNAI');
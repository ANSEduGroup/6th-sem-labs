-- Order by

--1
select * from hotel_006 order by name desc;

--2
select * from room_006 order by price asc;

--3
select * from guest_006 order by name desc;

--4
select * from guest_006 order by age asc;

-- Pattern Matching

--1
select name from guest_006
where name like 'R%';

--2
select name from guest_006
where name like '_O%' or
name like '_H%';

--3
select name from guest_006
where name like 'J___';

--4
select * from hotel_006
where name like '__R%';

--5
select name from guest_006
where name like '%U' or
name like '%A';

-- Range Searching

--1
select * from room_006
where price between 2000 and 3000;

--2
select guest_006.name, booking_006.date_from from booking_006, guest_006
where guest_006.guest_no = booking_006.guest_no
and date_from between '01-JAN-2016' and '10-JAN-2016';

--3
select name, age from guest_006
where age between 30 and 45;

-- IN and NOT IN

--1
select name from guest_006
where name in ('RAM','SMITH','JONES');

--2
select * from hotel_006
where name not in ('PURI','TAJ');

--3
select * from guest_006
where address in ('KOLKATA', 'CHENNAI');
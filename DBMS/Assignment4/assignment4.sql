-- Order by

select * from hotel_006 order by name desc;

select * from room_006 order by price asc;

select * from guest_006 order by name desc;

-- Pattern Matching

select name from guest_006
where name like 'R%';

select name from guest_006
where name like '_O%' or
name like '_H%';

select name from guest_006
where name like 'J___';

-- Range Searching

select * from room_006
where price between 2000 and 3000;

select guest_006.name, booking_006.date_from from booking_006, guest_006
where guest_006.guest_no = booking_006.guest_no
and date_from between '01-JAN-2016' and '10-JAN-2016';

select name from guest_006
where name in ('RAM','SMITH','JONES');

select * from hotel_006
where name not in ('PURI','TAJ');
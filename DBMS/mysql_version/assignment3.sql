# Find out the number of hotels
select count(distinct hotel_no) from hotel_006;

# Average price of a room
select avg(price) from room_006;
# Grouped by hotel no
# select hotel_no, avg(price) from room_006 GROUP BY hotel_no;

# No of different guests booked for january only
select count(distinct guest_no) from booking_006 where month(date_from) = 1 and month(date_to) = 1;

# Room details for hotel ITC
select room_no, type, price from room_006
where hotel_no = (select hotel_no from hotel_006 where name = 'ITC');

# List all the guest names of PURI Hotel
select booking_006.room_no, guest_006.name from guest_006, hotel_006, booking_006
where booking_006.hotel_no = hotel_006.hotel_no 
and guest_006.guest_no = booking_006.guest_no
and hotel_006.name = 'PURI';

# List the hotel name where Jadu/Rahul Stays
select * from booking_006, guest_006
where booking_006.guest_no = guest_006.guest_no
and guest_006.name = 'RAHUL';

# List the guest names whose address and hotel address are same
select guest_006.name from guest_006, booking_006, hotel_006
where guest_006.guest_no = booking_006.guest_no
and booking_006.hotel_no = hotel_006.hotel_no
and guest_006.address = hotel_006.address;

# List the number of rooms in each hotel
select count(room_no), hotel_no, avg(price) FROM room_006 GROUP BY hotel_no;

# List the number of rooms in each hotel in KOLKATA
select count(room_no), room_006.hotel_no, avg(price) FROM room_006, hotel_006
WHERE room_006.hotel_no = hotel_006.hotel_no
and hotel_006.address = 'KOLKATA';

# Delete the booking details of the guest with guest with guest_no G4
DELETE from booking_006 WHERE guest_no = 'G4';

# Update hotel prices by 5%
UPDATE room_006 set price = (price * 1.05);

# Update the guest name to JISHU where the guest_no is G3
update guest_006 set name = 'JISHU' where guest_no = 'G3';
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


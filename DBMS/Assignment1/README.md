<h1 align="center">Assignment 1</h1>
<h2 align="center">Data Definition Language</h2>
### Table Details
- Hotel (hotel_no(10, varchar), name(20, varchar), address(30,varchar))
- Room (room_no(10, varchar), hotel_no(10, varchar), type(10, varchar), price(20, number))
- Booking (hotel_no(10, varchar), guest_no(10, varchar), date_from(date), date_to(10), room_no(10, varchar))
- Guest (guest_no(10, varchar), name(30, varchar), address(30, varchar))

### Questions
1. Create table hotel that contains all hotel details, hotel_no is the primary key.
2. Create table room that contains all room details for a hotel. room_no and hotel_no are the primary keys.
3. Create table booking that contains booking details for a guest. Primary keys are hotel_no, guest_no and date_from.
4. Create table guest that contains guest details. Primary key is guest_no.
5. Alter table hotel and add an attribute "status".
6. Alter table guest and modify the size of guest name to 30.
7. Rename table hotel to cityhotel.
8. Drop table room.
9. Describe table hotel.
10. Describe table guest.
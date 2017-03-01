<h1 align="center">Assignment 2</h1>
<h2 align="center">Data Manipulation Language</h2>

### Constraints
**Query**
```sql
ALTER TABLE room_006
ADD CONSTRAINT hotel_key
FOREIGN KEY (hotel_no) REFERENCES hotel_006(hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT room_key
FOREIGN KEY (room_no, hotel_no) REFERENCES room_006(room_no, hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT guest_key
FOREIGN KEY (guest_no) REFERENCES guest_006(guest_no);
```
**Result**
```
CONSTRAINT_NAME                C TABLE_NAME
------------------------------ - ------------------------------
SYS_C007056                    P HOTEL_006
SYS_C007057                    P ROOM_006
SYS_C007058                    P BOOKING_006
SYS_C007059                    P GUEST_006
HOTEL_KEY                      R ROOM_006
ROOM_KEY                       R BOOKING_006
GUEST_KEY                      R BOOKING_006
```
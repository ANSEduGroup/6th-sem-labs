<h1 align="center">Assignment 3</h1>
<h2 align="center">Data Manipulation Language</h2>

## Aggregate Functions
### Question 1
How many hotels are there?

**Query**
```sql
select count(distinct hotel_no) as "Number of Hotels" from hotel_006;
```
**Output**
```
Number of Hotels
----------------
               7
```

### Question 2
What is the average price of a room?

**Query**
```sql
select avg(price) as "Avg Room Price" from room_006;
```
**Output**
```
Avg Price of a Room
-------------------
         2066.66667
```

### Question 3
How many different guests have made booking for January?

**Query**
```sql
select count(distinct guest_no) as "January Guests"
from booking_006
where extract(month from date_from) = 1
and extract(month from date_to) = 1;
```
**Output**
```
January Guests
--------------
             4
```
<br>
### Question 4
Find out minimum and maximum price of room.

**Query**
```sql
select min(price) as "Min Price", max(price) as "Max Price"
from room_006;
```
**Output**
```
 Min Price  Max Price
---------- ----------
       900       3500
```

### Question 5
Find out average age of guest.

**Query**
```sql
select avg(age) as "Average Age" from guest_006;
```
**Output**
```
Average Age
-----------
 40.7777778
```

### Question 6
List guest names who is youngest and who is oldest.

**Query**
```sql
select guest_006.name as "Name", guest_006.age as "Age" from guest_006
where guest_006.age = (select min(age) from guest_006)
or guest_006.age = (select max(age) from guest_006);
```
**Output**
```
Name                                  Age
------------------------------ ----------
RAJA                                   24
SIMA                                   62
```

## Subquery and Join
### Question 1
List the price and type of all room at the GRAND hotel.

**Query**
```sql
select room_no, type, price from room_006
where hotel_no = (select hotel_no from hotel_006 where name = 'ITC');
```
**Output**
```
ROOM_NO    TYPE            PRICE
---------- ---------- ----------
R1         AC               2000
R2         NONAC            1000
```

### Question 2
List all guest name who booked hotel at PURI.

**Query**
```sql
select booking_006.room_no, guest_006.name from guest_006, hotel_006, booking_006
where booking_006.hotel_no = hotel_006.hotel_no 
and guest_006.guest_no = booking_006.guest_no
and hotel_006.name = 'PURI';
```
**Output**
```
ROOM_NO    NAME
---------- ------------------
R2         RIMI
```

### Question 3
List the hotel name where JADU stays.

**Query**
```sql
select hotel_006.name as "Hotel Name", booking_006.room_no as "Room No"
from booking_006, guest_006, hotel_006
where booking_006.hotel_no = hotel_006.hotel_no
and booking_006.guest_no = guest_006.guest_no
and guest_006.name = 'JADU';
```
**Output**
```
Hotel Name           Room No
-------------------- ----------
TAJ                  R1
```

### Question 4
List the name of guest whose address and hotel whre the guest stay is same.

**Query**
```sql
select guest_006.name as "Guest Name", guest_006.address as "Guest Address",
hotel_006.name as "Hotel Name", hotel_006.address as "Hotel Address"
from guest_006, booking_006, hotel_006
where guest_006.guest_no = booking_006.guest_no
and booking_006.hotel_no = hotel_006.hotel_no
and guest_006.address = hotel_006.address;
```
<br><br><br><br>
**Output**
```
Guest Name              Guest Address           Hotel Name           Hotel Address
----------------------- ----------------------- -------------------- -----------------------
JONES                   CHENNAI                 PARK                 CHENNAI
SHYAM                   KOLKATA                 GRAND                KOLKATA
```

## Grouping
### Question 1
List the number of room in each hotel.

**Query**
```sql
select count(room_no) as "No of Rooms", room_006.hotel_no, avg(room_006.price) as "Average Price"
from room_006 group by room_006.hotel_no;
```
**Output**
```
No of Rooms HOTEL_NO   Average Price
----------- ---------- -------------
          1 H4                  1800
          1 H3                  2900
          1 H6                  3500
          1 H7                   900
          2 H1                  1500
          1 H5                  3000
          2 H2                  1750
```

### Question 2
List the number of rooms in each hotel in KOLKATA.

**Query**
```sql
select count(room_006.room_no) as "Rooms", hotel_006.name FROM room_006, hotel_006
WHERE room_006.hotel_no = hotel_006.hotel_no
and hotel_006.address = 'KOLKATA' group by hotel_006.name;
```
**Output**
```
     Rooms NAME
---------- --------------------
         1 ITC
         2 GRAND
```

### Question 3
List the maximum price of each hotel.

**Query**
```sql
select hotel_006.hotel_no, max(price) as "Max Room Price"
from room_006, hotel_006
where room_006.hotel_no = hotel_006.hotel_no
group by hotel_006.hotel_no order by hotel_006.hotel_no;
```
**Output**
```
HOTEL_NO   Max Room Price
---------- --------------
H1                   2000
H2                   2500
H3                   2900
H4                   1800
H5                   3000
H6                   3500
H7                    900
```
## DML
### Question 1
Delete the booking details of the guest with guest_no G4.

**Query**
```sql
DELETE from booking_006 WHERE guest_no = 'G4';
```
**Output**
```
ROOM_NO    HOTEL_NO   GUEST_NO   DATE_FROM DATE_TO
---------- ---------- ---------- --------- ---------
R1         H1         G1         01-JAN-16 08-JAN-16
R2         H1         G2         12-JAN-16 18-JAN-16
R1         H2         G3         01-FEB-16 08-FEB-16
R3         H4         G5         10-MAR-16 18-MAR-16
R4         H5         G6         11-JAN-16 18-JAN-16
R2         H3         G7         21-FEB-16 28-FEB-16
R1         H6         G8         22-FEB-16 27-FEB-16
```

### Question 2
Update the price of rooms by 5%.

**Query**
```sql
UPDATE room_006 set price = (price * 1.05);
```
**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R1         H1         AC               2100
R2         H1         NONAC            1050
R1         H2         DELUX            2625
R2         H2         NONAC            1050
R2         H3         AC               3045
R3         H4         AC               1890
R4         H5         DELUX            3150
R1         H6         AC               3675
R5         H7         NONAC             945
```
<br><br><br><br>
### Question 3
Update the name of the guest to "JISHU" where guest_no is G3.

**Query**
```sql
update guest_006 set name = 'JISHU' where guest_no = 'G3';
```
**Output**
```
GUEST_NO   NAME                 ADDRESS                    AGE
---------- -------------------- ------------------- ----------
G1         RAM                  MUMBAI                      43
G2         SHYAM                KOLKATA                     32
G3         JISHU                KOLKATA                     26
G4         MADHU                KOLKATA                     48
G5         SMITH                CHENNAI                     55
G6         JONES                CHENNAI                     39
G7         RIMI                 KOLKATA                     38
G8         RAJA                 PURI                        24
G9         SIMA                 MUMBAI                      62
```
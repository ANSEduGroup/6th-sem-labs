<h1 align="center">Assignment 5</h1>

## CHECK

### Question 1
ALTER TABLE ROOM WITH CHECK CONSTRAINT THAT PRICE CAN NOT BE LESS THAN 100.

**Query**
```sql
alter table room_006
add constraint price_check_006 check (price >= 100);
```

### Question 2
ALTER TABLE BOOKING SUCH THAT THE DATE_FROM CAN NOT BE MORE THAN DATE_TO.

**Query**
```sql
alter table booking_006
add constraint date_check_006 check (date_from < date_to);
```

### Question 3
ALTER TABLE GUEST SUCH THAT AGE OF GUEST SHOULD NOT BE LESS THAN 18.

**Query**
```sql
alter table guest_006
add constraint age_check_006 check (age >= 18);
```
### Constraints

```
Name                           T Table
------------------------------ - -------------------------
SYS_C007058                    P BOOKING_006
ROOM_KEY                       R BOOKING_006
GUEST_KEY                      R BOOKING_006
DATE_CHECK_006                 C BOOKING_006
SYS_C007059                    P GUEST_006
AGE_CHECK_006                  C GUEST_006
SYS_C007056                    P HOTEL_006
SYS_C007057                    P ROOM_006
HOTEL_KEY                      R ROOM_006
PRICE_CHECK_006                C ROOM_006
```

## TO_CHAR

### Question 1
SELECT THE GUEST NAME, DATE_TO AND DATE_FROM IN THE FORMAT(DD/MM/YYYY).

**Query**
```sql
select
  guest_006.name as "Guest Name",
  to_char(booking_006.date_from, 'DD/MM/YYYY') as "Date From",
  to_char(booking_006.date_to, 'DD/MM/YYYY') as "Date To"
  from booking_006, guest_006
where booking_006.guest_no = guest_006.guest_no;
```

**Output**
```
Guest Name                     Date From  Date To
------------------------------ ---------- ----------
JADU                           01/02/2016 08/02/2016
MADHU                          18/01/2016 28/01/2016
SMITH                          10/03/2016 18/03/2016
JONES                          11/01/2016 18/01/2016
RIMI                           21/02/2016 28/02/2016
RAJA                           22/02/2016 27/02/2016
RAM                            01/01/2016 08/01/2016
SHYAM                          12/01/2016 18/01/2016
```

### Question 2
SELECT THE PRICE OF THE HOTEL IN THE FORMAT(‘9,999.99’).

**Query**
```sql
select
  room_no as "Room No",
  hotel_no as "Hotel No",
  type as "Type",
  to_char(price, '9,999.99') as "Price"
from room_006;
```

**Output**
```
Room No    Hotel No   Type       Price
---------- ---------- ---------- ---------
R1         H2         DELUX       2,500.00
R2         H2         NONAC       1,000.00
R3         H4         AC          1,800.00
R4         H5         DELUX       3,000.00
R2         H3         AC          2,900.00
R1         H6         AC          3,500.00
R5         H7         NONAC         900.00
R1         H1         AC          2,000.00
R2         H1         NONAC       1,000.00
```

## SUBQUERY

### Question 1
LIST THE ROOM NO. WHOSE PRICE IS MORE THAN THE AVERAGE PRICE OF ALL THE ROOM. 

**Query**
```sql
select * from room_006
where price > (select avg(price) from room_006);
```

**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R1         H2         DELUX            2500
R4         H5         DELUX            3000
R2         H3         AC               2900
R1         H6         AC               3500
```

### Question 2
LIST THE GUEST NO WHOSE DATE_FROM IS BEFORE DATE_FROM OF MADHU.

**Query**
```sql
select * from BOOKING_006
WHERE DATE_FROM < (select DATE_FROM from BOOKING_006
	where GUEST_NO = (SELECT GUEST_NO from GUEST_006
		where NAME = 'MADHU'));
```

**Output**
```
ROOM_NO    HOTEL_NO   GUEST_NO   DATE_FROM DATE_TO
---------- ---------- ---------- --------- ---------
R4         H5         G6         11-JAN-16 18-JAN-16
R1         H1         G1         01-JAN-16 08-JAN-16
R2         H1         G2         12-JAN-16 18-JAN-16
```

### Question 3
LIST THE NAME OF THE HOTEL WHOSE ADDRESS IS SAME AS ‘ITC’.

**Query**
```sql
select * from HOTEL_006
where ADDRESS in (SELECT ADDRESS from HOTEL_006 WHERE name = 'ITC');
```

**Output**
```
HOTEL_NO   NAME                 ADDRESS
---------- -------------------- ------------------------------
H4         ITC                  KOLKATA
H1         GRAND                KOLKATA
H6         ITC                  MUMBAI
H2         TAJ                  MUMBAI
```

### Question 4
LIST THE NAME OF THE GUEST WHO LIVE IN SAME CITY WHERE ‘SHYAM’ LIVE.

**Query**
```sql
select * from guest_006
where address = (select address from guest_006 where name = 'SHYAM');
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G3         JADU                           KOLKATA                                26
G4         MADHU                          KOLKATA                                48
G7         RIMI                           KOLKATA                                38
G2         SHYAM                          KOLKATA                                32
```

### Question 5
LIST GUEST NAME WHO IS YOUNGER THAN ‘RAM’.

**Query**
```sql
select * from guest_006
where age < (select age from guest_006 where name = 'RAM');
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G3         JADU                           KOLKATA                                26
G6         JONES                          CHENNAI                                39
G7         RIMI                           KOLKATA                                38
G8         RAJA                           PURI                                   24
G2         SHYAM                          KOLKATA                                32
```

### Question 6
LIST GUEST NAME WHOSE AGE IS MORE THAN THE AVERAGE AGE OF ALL GUEST.

**Query**
```sql
select * from guest_006
where age > (select avg(age) from guest_006);
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G4         MADHU                          KOLKATA                                48
G5         SMITH                          CHENNAI                                55
G9         SIMA                           MUMBAI                                 62
G1         RAM                            MUMBAI                                 43
```

### Question 7
LIST GUEST NAME WHOSE AGE IS LESS THAN AVERRAGE AGE OF ALL GUEST.

**Query**
```sql
select * from guest_006
where age < (select avg(age) from guest_006);
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G3         JADU                           KOLKATA                                26
G6         JONES                          CHENNAI                                39
G7         RIMI                           KOLKATA                                38
G8         RAJA                           PURI                                   24
G2         SHYAM                          KOLKATA                                32
``` 
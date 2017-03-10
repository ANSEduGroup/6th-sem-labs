<h1 align="center">Assignment 4</h1>

## ORDER BY

### Question 1
LIST THE HOTEL NAMES IN DESCENDING ORDER OF NAME.

**Query**
```sql
select * from hotel_006 order by name desc;
```

**Output**
```
HOTEL_NO   NAME                 ADDRESS
---------- -------------------- ------------------------
H2         TAJ                  MUMBAI
H7         SONALI               PURI
H3         PURI                 PURI
H5         PARK                 CHENNAI
H4         ITC                  KOLKATA
H6         ITC                  MUMBAI
H1         GRAND                KOLKATA
```

### Question 2
LIST THE ROOMS IN ASCENDING ORDER OF PRICE.

**Query**
```sql
select * from room_006 order by price asc;
```

**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R5         H7         NONAC             900
R2         H2         NONAC            1000
R2         H1         NONAC            1000
R3         H4         AC               1800
R1         H1         AC               2000
R1         H2         DELUX            2500
R2         H3         AC               2900
R4         H5         DELUX            3000
R1         H6         AC               3500
```

### Question 3
LIST THE GUEST DETAILS IN DESCENDING ORDER OF THEIR NAME.

**Query**
```sql
select * from guest_006 order by name desc;
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G5         SMITH                          CHENNAI                                55
G9         SIMA                           MUMBAI                                 62
G2         SHYAM                          KOLKATA                                32
G7         RIMI                           KOLKATA                                38
G1         RAM                            MUMBAI                                 43
G8         RAJA                           PURI                                   24
G4         MADHU                          KOLKATA                                48
G6         JONES                          CHENNAI                                39
G3         JADU                           KOLKATA                                26
```

### Question 4
LIST THE GUEST DETAILS IN ASCENDING ORDER OF THEIR AGE.

**Query**
```sql
select * from guest_006 order by age asc;
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G8         RAJA                           PURI                                   24
G3         JADU                           KOLKATA                                26
G2         SHYAM                          KOLKATA                                32
G7         RIMI                           KOLKATA                                38
G6         JONES                          CHENNAI                                39
G1         RAM                            MUMBAI                                 43
G4         MADHU                          KOLKATA                                48
G5         SMITH                          CHENNAI                                55
G9         SIMA                           MUMBAI                                 62
```

## PATTERN MATCHING

### Question 1
SELECT THE NAME(S) OF GUEST(S) WHOSE NAME(S) START WITH ‘R’.

**Query**
```sql
select name from guest_006
where name like 'R%';
```

**Output**
```
NAME
---------------------
RIMI
RAJA
RAM
```

### Question 2
SELECT THE NAME(s) OF GUEST(s) WHOSE NAME(s) HAVE SECOND CHARACTER ‘O’ OR ‘H’.

**Query**
```sql
select name from guest_006
where name like '_O%' or
name like '_H%';
```

**Output**
```
NAME
--------------------
JONES
SHYAM
```

### Question 3
SELECT THE GUEST(s) WHOSE NAME(s) BEGIN WITH ‘J’ AND IT IS A FOUR LETTER WORD.

**Query**
```sql
select * from guest_006
where name like 'J___';
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G3         JADU                           KOLKATA                                26
```

### Question 4
SELECT HOTELS WITH ADDRESSES WITH ‘R’ AS 3RD CHARACTER.

**Query**
```sql
select * from hotel_006
where name like '__R%';
```

**Output**
```
HOTEL_NO   NAME                 ADDRESS
---------- -------------------- ------------------------------
H3         PURI                 PURI
H5         PARK                 CHENNAI
```

### Question 5
LIST GUEST NAMES WHOSE NAMES END EITHER WITH ‘U’ OR ‘A’.

**Query**
```sql
select name from guest_006
where name like '%U' or
name like '%A';
```

**Output**
```
NAME
------------------------
JADU
MADHU
RAJA
SIMA
```

## RANGE SEARCHING

### Question 1
LIST THE ROOMS WITH PRICE BETWEEN 2000 AND 3000.

**Query**
```sql
select * from room_006
where price between 2000 and 3000;
```

**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R1         H2         DELUX            2500
R4         H5         DELUX            3000
R2         H3         AC               2900
R1         H1         AC               2000
```

### Question 2
SELECT THE GUEST NAMES WHO BOOKED HOTEL FROM 1ST JAN TO 10TH JAN.

**Query**
```sql
select guest_006.name, booking_006.date_from from booking_006, guest_006
where guest_006.guest_no = booking_006.guest_no
and date_from between '01-JAN-2016' and '10-JAN-2016';
```

**Output**
```
NAME                           DATE_FROM
------------------------------ ---------
RAM                            01-JAN-16
```

### Question 3
LIST GUEST NAMES AND AGES WHOSE AGE IS BETWEEN 30 AND 45.

**Query**
```sql
select name, age from guest_006
where age between 30 and 45;
```

**Output**
```
NAME                                  AGE
------------------------------ ----------
JONES                                  39
RIMI                                   38
RAM                                    43
SHYAM                                  32
```

## IN AND NOT IN

### Question 1
SELECT THE GUESTS NAMED RAM, SMITH, JONES.

**Query**
```sql
select * from guest_006
where name in ('RAM','SMITH','JONES');
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G5         SMITH                          CHENNAI                                55
G6         JONES                          CHENNAI                                39
G1         RAM                            MUMBAI                                 43
```

### Question 2
SELECT THE HOTELS OTHER THAN PURI, TAJ.

**Query**
```sql
select * from hotel_006
where name not in ('PURI','TAJ');
```

**Output**
```
HOTEL_NO   NAME                 ADDRESS
---------- -------------------- ----------------------------
H1         GRAND                KOLKATA
H4         ITC                  KOLKATA
H5         PARK                 CHENNAI
H6         ITC                  MUMBAI
H7         SONALI               PURI
```

### Question 3
SELECT THE GUESTS WHOSE ADDRESS IS KOLKATA, CHENNAI.

**Query**
```sql
select * from guest_006
where address in ('KOLKATA', 'CHENNAI');
```

**Output**
```
GUEST_NO   NAME                           ADDRESS                               AGE
---------- ------------------------------ ------------------------------ ----------
G3         JADU                           KOLKATA                                26
G4         MADHU                          KOLKATA                                48
G5         SMITH                          CHENNAI                                55
G6         JONES                          CHENNAI                                39
G7         RIMI                           KOLKATA                                38
G2         SHYAM                          KOLKATA                                32
```

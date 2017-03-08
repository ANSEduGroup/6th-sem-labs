# Assignment 2

**Create the following tables and insert the records in the tables as mentioned**

### HOTEL

| HOTEL_NO |  NAME  |  ADDRESS | 
|----------|--------|----------| 
| H1       | GRAND  | KOLKATA  | 
| H2       | TAJ    | MUMBAI   | 
| H3       | PURI   | PURI     | 
| H4       | ITC    | KOLKATA  | 
| H5       | PARK   | CHENNAI  | 
| H6       | ITC    | MUMBAI   | 
| H7       | SONALI | PURI     | 

### ROOM

| ROOM_NO |  HOTEL_NO |  TYPE |  PRICE | 
|---------|-----------|-------|--------| 
| R1      | H1        | AC    | 2000   | 
| R2      | H1        | NONAC | 1000   | 
| R1      | H2        | DELUX | 2500   | 
| R2      | H2        | NONAC | 1000   | 
| R3      | H4        | AC    | 1800   | 
| R4      | H5        | DELUX | 3000   | 
| R2      | H3        | AC    | 2900   | 
| R1      | H6        | AC    | 2500   | 
| R5      | H7        | NONAC | 900    | 

### BOOKING

| ROOM_NO | HOTEL_NO | GUEST_NO | DATE_FROM  | DATE_TO    | 
|---------|----------|----------|------------|------------| 
| R1      | H1       | G1       | 01-01-2016 | 08-01-2016 | 
| R2      | H1       | G2       | 12-01-2016 | 18-01-2016 | 
| R1      | H2       | G3       | 01-02-2016 | 08-02-2016 | 
| R2      | H2       | G4       | 18-01-2016 | 28-01-2016 | 
| R3      | H4       | G5       | 10-03-2016 | 18-03-2016 | 
| R4      | H5       | G6       | 11-01-2016 | 18-01-2016 | 
| R2      | H3       | G7       | 21-02-2016 | 28-02-2016 | 
| R1      | H6       | G8       | 22-02-2016 | 27-02-2016 | 


### GUEST

| GUEST_NO | NAME  | ADDRESS | AGE | 
|----------|-------|---------|-----| 
| G1       | RAM   | MUMBAI  | 43  | 
| G2       | SHYAM | KOLKATA | 32  | 
| G3       | JADU  | KOLKATA | 26  | 
| G4       | MADHU | KOLKATA | 48  | 
| G5       | SMITH | CHENNAI | 55  | 
| G6       | JONES | CHENNAI | 39  | 
| G7       | RIMI  | KOLKATA | 38  | 
| G8       | RAJA  | PURI    | 24  | 
| G9       | SIMA  | MUMBAI  | 62  | 


## Questions
1. List all the hotels in KOLKATA.
2. List the room details of hotel H1.
3. List the guest names who live in CHENNAI.
4. List the guest_no who stayed from 01-01-2016 to 08-01-2016.
5. List the room details whose price is > 2000 and < 3000.
6. List the guest names whose age is less than 50 but more than 30.

# Answers

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
## INSERT Queries

### Hotel
```sql
INSERT INTO HOTEL_006 VALUES ('H1','GRAND','KOLKATA');
INSERT INTO HOTEL_006 VALUES ('H2','TAJ','MUMBAI');
INSERT INTO HOTEL_006 VALUES ('H3','PURI','PURI');
INSERT INTO HOTEL_006 VALUES ('H4','ITC','KOLKATA');
INSERT INTO HOTEL_006 VALUES ('H5','PARK','CHENNAI');
INSERT INTO HOTEL_006 VALUES ('H6','ITC','MUMBAI');
INSERT INTO HOTEL_006 VALUES ('H7','SONALI','PURI');
```
```
+----------+--------+---------+
| hotel_no | name   | address |
+----------+--------+---------+
| H1       | GRAND  | KOLKATA |
| H2       | TAJ    | MUMBAI  |
| H3       | PURI   | PURI    |
| H4       | ITC    | KOLKATA |
| H5       | PARK   | CHENNAI |
| H6       | ITC    | MUMBAI  |
| H7       | SONALI | PURI    |
+----------+--------+---------+
```
<br>
### Room
```sql
INSERT INTO ROOM_006 VALUES ('R1','H1','AC',2000);
INSERT INTO ROOM_006 VALUES ('R2','H1','NONAC',1000);
INSERT INTO ROOM_006 VALUES ('R1','H2','DELUX',2500);
INSERT INTO ROOM_006 VALUES ('R2','H2','NONAC',1000);
INSERT INTO ROOM_006 VALUES ('R3','H4','AC',1800);
INSERT INTO ROOM_006 VALUES ('R4','H5','DELUX',3000);
INSERT INTO ROOM_006 VALUES ('R2','H3','AC',2900);
INSERT INTO ROOM_006 VALUES ('R1','H6','AC',3500);
INSERT INTO ROOM_006 VALUES ('R5','H7','NONAC',900);
```
```
+---------+----------+-------+-------+
| room_no | hotel_no | type  | price |
+---------+----------+-------+-------+
| R1      | H1       | AC    |  2000 |
| R1      | H2       | DELUX |  2500 |
| R1      | H6       | AC    |  3500 |
| R2      | H1       | NONAC |  1000 |
| R2      | H2       | NONAC |  1000 |
| R2      | H3       | AC    |  2900 |
| R3      | H4       | AC    |  1800 |
| R4      | H5       | DELUX |  3000 |
| R5      | H7       | NONAC |   900 |
+---------+----------+-------+-------+
```

### Guest
```sql
INSERT INTO guest_006 VALUES ('G1', 'RAM', 'MUMBAI', '43');
INSERT INTO guest_006 VALUES ('G2', 'SHYAM', 'KOLKATA', '32');
INSERT INTO guest_006 VALUES ('G3', 'JADU', 'KOLKATA', '26');
INSERT INTO guest_006 VALUES ('G4', 'MADHU', 'KOLKATA', '48');
INSERT INTO guest_006 VALUES ('G5', 'SMITH', 'CHENNAI', '55');
INSERT INTO guest_006 VALUES ('G6', 'JONES', 'CHENNAI', '39');
INSERT INTO guest_006 VALUES ('G7', 'RIMI', 'KOLKATA', '38');
INSERT INTO guest_006 VALUES ('G8', 'RAJA', 'PURI', '24');
INSERT INTO guest_006 VALUES ('G9', 'SIMA', 'MUMBAI', '62');
```
```
+----------+-------+---------+------+
| guest_no | name  | address | age  |
+----------+-------+---------+------+
| G1       | RAM   | MUMBAI  |   43 |
| G2       | SHYAM | KOLKATA |   32 |
| G3       | JADU  | KOLKATA |   26 |
| G4       | MADHU | KOLKATA |   48 |
| G5       | SMITH | CHENNAI |   55 |
| G6       | JONES | CHENNAI |   39 |
| G7       | RIMI  | KOLKATA |   38 |
| G8       | RAJA  | PURI    |   24 |
| G9       | SIMA  | MUMBAI  |   62 |
+----------+-------+---------+------+
```

### Booking
```sql
INSERT INTO booking_006 VALUES ('R1','H1', 'G1', '01-JAN-2016','08-JAN-2016');
INSERT INTO booking_006 VALUES ('R2', 'H1', 'G2', '12-JAN-2016', '18-JAN-2016');
INSERT INTO booking_006 VALUES ('R1','H2', 'G3', '01-FEB-2016', '08-FEB-2016');
INSERT INTO booking_006 VALUES ('R2', 'H2', 'G4', '18-JAN-2016', '28-JAN-2016');
INSERT INTO booking_006 VALUES ('R3','H4', 'G5', '10-MAR-2016', '18-MAR-2016');
INSERT INTO booking_006 VALUES ('R4', 'H5', 'G6', '11-JAN-2016', '18-JAN-2016');
INSERT INTO booking_006 VALUES ('R2','H3', 'G7', '21-FEB-2016', '28-FEB-2016');
INSERT INTO booking_006 VALUES ('R1','H6', 'G8', '22-FEB-2016', '27-FEB-2016');
```
<br><br>
```
ROOM_NO    HOTEL_NO   GUEST_NO   DATE_FROM  DATE_TO
---------- ---------- ---------- ---------  ---------
R1         H1         G1         01-JAN-16  08-JAN-16
R2         H1         G2         12-JAN-16  18-JAN-16
R1         H2         G3         01-FEB-16  08-FEB-16
R2         H2         G4         18-JAN-16  28-JAN-16
R3         H4         G5         10-MAR-16  18-MAR-16
R4         H5         G6         11-JAN-16  18-JAN-16
R2         H3         G7         21-FEB-16  28-FEB-16
R1         H6         G8         22-FEB-16  27-FEB-16
```

### Question 1
List all the hotels in Kolkata

**Query**
```sql
SELECT * FROM hotel_006
WHERE address = 'KOLKATA';
```

**Output**
```
HOTEL_NO   NAME                 ADDRESS
---------- -------------------- ---------------------
H1         GRAND                KOLKATA
H4         ITC                  KOLKATA
```

### Question 2
List the room details of hotel no. H1

**Query**
```sql
SELECT * FROM room_006
WHERE hotel_no = 'H1';
```

**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R1         H1         AC               2000
R2         H1         NONAC            1000
```

### Question 3
List the guest names who live in CHENNAI.
**Query**
```sql
SELECT name FROM guest_006
WHERE address = 'CHENNAI';
```
**Output**
```
NAME
-----------------
SMITH
JONES
```

### Question 4
List the guest number(s) who stayed from 01-01-2016 to 08-01-2016.

**Query**
```sql
SELECT guest_no FROM booking_006
WHERE date_from = '01-JAN-2016' AND date_to = '08-JAN-2016';
```

**Output**
```
GUEST_NO
----------
G1
```

### Question 5
List the room details whose price > 2000 AND price < 3000.

**Query**
```sql
SELECT * FROM room_006
WHERE price > 2000 AND price < 3000;
```

**Output**
```
ROOM_NO    HOTEL_NO   TYPE            PRICE
---------- ---------- ---------- ----------
R1         H2         DELUX            2500
R2         H3         AC               2900
```

### Question 6
List the guest names whose age is less than 50 but more than 30.

**Query**
```sql
SELECT NAME FROM GUEST_006
WHERE AGE < 50 AND AGE > 30;
```

**Output**
```
NAME
-------------
MADHU
JONES
RIMI
RAM
SHYAM
```
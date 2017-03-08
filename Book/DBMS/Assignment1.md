# Assignment 1</h1>
## Data Definition Language
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

# Answers
### Question 1
Create table hotel that contains all hotel details, hotel_no is the primary key.

**Query:**
```sql
CREATE TABLE hotel (
  hotel_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(20),
  address VARCHAR(30)
);
```
**Output:**
```
mysql> desc hotel;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| hotel_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
```

### Question 2
Create table room that contains all room details for a hotel. room_no and hotel_no are the primary keys.

**Query:**
```sql
CREATE TABLE room (
  room_no VARCHAR(10),
  hotel_no VARCHAR(10),
  type VARCHAR(10),
  price INT,
  PRIMARY KEY(room_no, hotel_no)
);
```
**Output:**
```
mysql> desc room;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| room_no  | varchar(10) | NO   | PRI | NULL    |       |
| hotel_no | varchar(10) | NO   | PRI | NULL    |       |
| type     | varchar(10) | YES  |     | NULL    |       |
| price    | int(11)     | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
```

### Question 3
Create table booking that contains booking details for a guest. Primary keys are hotel_no, guest_no and date_from.

**Query:**
```sql
CREATE TABLE booking (
  hotel_no VARCHAR(10),
  guest_no VARCHAR(10),
  date_from DATE,
  date_to DATE,
  room_no VARCHAR(10),
  PRIMARY KEY(hotel_no, guest_no, date_from)
);
```
**Output:**
```
mysql> desc booking;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| hotel_no  | varchar(10) | NO   | PRI | NULL    |       |
| guest_no  | varchar(10) | NO   | PRI | NULL    |       |
| date_from | date        | NO   | PRI | NULL    |       |
| date_to   | date        | YES  |     | NULL    |       |
| room_no   | varchar(10) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
```

### Question 4
Create table guest that contains guest details. Primary key is guest_no.

**Query:**
```sql
CREATE TABLE guest (
  guest_no VARCHAR(10) PRIMARY KEY,
  name VARCHAR(30),
  address VARCHAR(30)
);
```
**Output:**
```
mysql> desc guest;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| guest_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(30) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
```

### Question 5
Alter table hotel and add an attribute "status".

**Query:**
```sql
ALTER TABLE hotel ADD (status VARCHAR(10));
```
**Output:**
```
mysql> desc hotel;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| hotel_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
| status   | varchar(10) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
```

### Question 6
Alter table guest and modify the size of guest name to 30.

**Query:**
```sql
ALTER TABLE guest MODIFY name VARCHAR(30);
```
**Output:**
```
mysql> desc guest;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| guest_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(30) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
```

### Question 7
Rename table hotel to cityhotel.

**Query:**
```sql
RENAME TABLE hotel TO cityhotel;
```
**Output:**
```
mysql> desc cityhotel;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| hotel_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(20) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
| status   | varchar(10) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)
```

### Question 8
Drop table room.

**Query:**
```sql
DROP TABLE room;
```
**Output:**
Before Dropping
```
mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| booking           |
| cityhotel         |
| guest             |
| room              |
+-------------------+
4 rows in set (0.00 sec)
```
After Dropping
```
mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| booking           |
| cityhotel         |
| guest             |
+-------------------+
3 rows in set (0.00 sec)
```

### Question 9
Describe table hotel.

**Query:**
```sql
DESC hotel;
```
**Output:**
```
mysql> desc hotel;
ERROR 1146 (42S02): Table 'college.hotel' doesn't exist
```
The above error is because we renamed the table "hotel" to "cityhotel" in Question 7.

### Question 10
Describe table guest.

**Query:**
```sql
DESC guest;
```
**Output:**
```
mysql> desc guest;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| guest_no | varchar(10) | NO   | PRI | NULL    |       |
| name     | varchar(30) | YES  |     | NULL    |       |
| address  | varchar(30) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
```
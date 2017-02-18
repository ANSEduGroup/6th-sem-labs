# Assignment 2
### Question 1
List all the hotels in Kolkata.

**Query**
```sql
SELECT * FROM hotel WHERE(hotel.address = 'KOLKATA');
```
**Output**
```
MariaDB [college]> SELECT * FROM hotel WHERE(hotel.address = 'KOLKATA');
+----------+-------+---------+
| hotel_no | name  | address |
+----------+-------+---------+
| H1       | GRAND | KOLKATA |
| H4       | ITC   | KOLKATA |
+----------+-------+---------+
2 rows in set (0.02 sec)
```
### Question 2
List the room details of hotel no H1.

**Query**
```sql
SELECT * FROM room WHERE(hotel_no = 'H1');
```
**Output**
```
MariaDB [college]> SELECT * FROM room WHERE(hotel_no = 'H1');
+---------+----------+-------+-------+
| room_no | hotel_no | type  | price |
+---------+----------+-------+-------+
| R1      | H1       | AC    |  2000 |
| R2      | H1       | NONAC |  1000 |
+---------+----------+-------+-------+
2 rows in set (0.00 sec)
```

### Question 3
List the names of the guests from Chennai.

**Query**
```sql
SELECT name FROM guest WHERE(address = 'CHENNAI');
```
**Output**
```
MariaDB [college]> SELECT name FROM guest WHERE(address = 'CHENNAI');
+-------+
| name  |
+-------+
| SMITH |
| JONES |
+-------+
2 rows in set (0.00 sec)
```

### Question 4
List the guest_no-s of the guests who stayed from 01-01-2013 to 08-01-2013.

**Query**
```sql
SELECT guest_no FROM booking WHERE((date_from='2013-01-01') AND (date_to='2013-01-08'));
```
**Output**
```
+----------+
| guest_no |
+----------+
| G1       |
| G3       |
+----------+
2 rows in set (0.00 sec)
```

### Question 5
List the details of the rooms where price is > 2000.

**Query**
```sql
SELECT * FROM room WHERE (price > '2000');
```
**Output**
```
MariaDB [college]> SELECT * FROM room WHERE (price > '2000');
+---------+----------+-------+-------+
| room_no | hotel_no | type  | price |
+---------+----------+-------+-------+
| R1      | H2       | DELUX |  2500 |
| R2      | H3       | AC    |  2900 |
| R4      | H5       | DELUX |  3000 |
+---------+----------+-------+-------+
3 rows in set (0.00 sec)
```
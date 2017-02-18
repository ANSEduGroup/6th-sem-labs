### Question 1
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
**Query**
```sql
SELECT guest_no FROM booking WHERE((date_from='2013-01-01') AND (date_to='2013-01-08'));
```
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
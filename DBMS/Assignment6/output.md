<h1 align="center">Assignment 6</h1>

## Create Tables
```sql
-- Publisher Table
create table publisher_006 (
  pub_id varchar2(4) primary key constraint pub_id_check_006 check (pub_id like 'P%'),
  pub_name varchar2(20),
  distributor varchar2(20),
  city varchar2(20),
  discount number(3),
  credit number(4)
);

-- Author Table
create table author_006 (
  isbn number(10) primary key,
  title varchar2(20),
  author_name varchar2(20),
  pub_id varchar2(4),
  category varchar2(10),
  year number(4),
  price number(5) constraint author_price_check_006 check (price > 50),
  constraint author_pub_id_fk_006
  foreign key (pub_id)
  references publisher_006(pub_id)
);

-- Order Table
create table order_006 (
  order_id number(5) primary key,
  isbn number(10),
  pub_id varchar2(4),
  qty number(5) constraint order_qty_check_006 check (qty > 0),
  constraint order_isbn_fk_006
  foreign key (isbn)
  references author_006(isbn),
  constraint order_pub_id_fk_006
  foreign key (pub_id)
  references publisher_006(pub_id)
);
```
<br><br>
## Insert into tables
```sql
-- insert into publisher

INSERT INTO PUBLISHER_006 VALUES ('P1','S K KATARIA', 'BUG TREE', 'BHOPAL',20,90);
INSERT INTO PUBLISHER_006 VALUES ('P2','PQR AND SONS.','KATSON','DELHI',15,45);
INSERT INTO PUBLISHER_006 VALUES ('P3','RJB PUBLISHER','CROSS WORD','BHOPAL',15,30);
INSERT INTO PUBLISHER_006 VALUES ('P4','LAXMI PUBLICATION','ORION','INDORE',20,60);
INSERT INTO PUBLISHER_006 VALUES ('P5','KALYANI','RELATIONAL','DELHI',25,46);

-- insert into author

INSERT INTO AUTHOR_006 VALUES (123,'ABC','IMRAN','P1','DSA',2010,250);
INSERT INTO AUTHOR_006 VALUES (234,'DEF','RAVI','P2','OS',2009,270);
INSERT INTO AUTHOR_006 VALUES (345,'PQR','SANTI','P3','DBMS',2010,230);
INSERT INTO AUTHOR_006 VALUES (456,'MNP','NISHA','P1','DBMS',2007,500);
INSERT INTO AUTHOR_006 VALUES (567,'CDR','PANKAJ','P4','DSA',2005,300);
INSERT INTO AUTHOR_006 VALUES (678,'SDP','AJAY','P1','DSA',2009,600);

-- insert into order

INSERT INTO ORDER_006 VALUES (1,123,'P1',100);
INSERT INTO ORDER_006 VALUES (2,234,'P2',40);
INSERT INTO ORDER_006 VALUES (3,345,'P3',40);
INSERT INTO ORDER_006 VALUES (4,456,'P1',50);
INSERT INTO ORDER_006 VALUES (5,567,'P4',100);
INSERT INTO ORDER_006 VALUES (6,678,'P1',50);
```

```
PUB_ PUB_NAME             DISTRIBUTOR          CITY                   DISCOUNT     CREDIT
---- -------------------- -------------------- -------------------- ---------- ----------
P1   S K KATARIA          BUG TREE             BHOPAL                       20         90
P2   PQR AND SONS.        KATSON               DELHI                        15         45
P3   RJB PUBLISHER        CROSS WORD           BHOPAL                       15         30
P4   LAXMI PUBLICATION    ORION                INDORE                       20         60
P5   KALYANI              RELATIONAL           DELHI                        25         46
```
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE
---------- -------------------- -------------------- ---- ---------- ---------- ----------
       123 ABC                  IMRAN                P1   DSA              2010        250
       234 DEF                  RAVI                 P2   OS               2009        270
       345 PQR                  SANTI                P3   DBMS             2010        230
       456 MNP                  NISHA                P1   DBMS             2007        500
       567 CDR                  PANKAJ               P4   DSA              2005        300
       678 SDP                  AJAY                 P1   DSA              2009        600
```
```
  ORDER_ID       ISBN PUB_        QTY
---------- ---------- ---- ----------
         1        123 P1          100
         2        234 P2           40
         3        345 P3           40
         4        456 P1           50
         5        567 P4          100
         6        678 P1           50
```

### Question 1
Get the titles of the book whose price is more than the average price.

**Query**
```sql
select * from author_006
where price > (select avg(price) from author_006);
```

**Output**
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE
---------- -------------------- -------------------- ---- ---------- ---------- ----------
       456 MNP                  NISHA                P1   DBMS             2007        500
       678 SDP                  AJAY                 P1   DSA              2009        600
```

### Question 2
Get the detail of publishers who are supplying the title ‘PQR’ to the book shop.

**Query**
```sql
select publisher_006.* from publisher_006, author_006
where author_006.pub_id = publisher_006.pub_id and
author_006.title = 'PQR';
```
<br>
**Output**
```
PUB_ PUB_NAME             DISTRIBUTOR          CITY                   DISCOUNT     CREDIT
---- -------------------- -------------------- -------------------- ---------- ----------
P3   RJB PUBLISHER        CROSS WORD           BHOPAL                       15         30
```

### Question 3
Get the detail of all books whose price is less than the average price of ‘DBMS’ book.

**Query**
```sql
select * from author_006
where price < (select avg(price) from author_006
	where category = 'DBMS');
```

**Output**
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE
---------- -------------------- -------------------- ---- ---------- ---------- ----------
       123 ABC                  IMRAN                P1   DSA              2010        250
       234 DEF                  RAVI                 P2   OS               2009        270
       345 PQR                  SANTI                P3   DBMS             2010        230
       567 CDR                  PANKAJ               P4   DSA              2005        300
```

### Question 4
Get the name of distributor who are supplying book ‘ABC’

**Query**
```sql
select distributor, city, discount, price
from author_006, publisher_006
where
	author_006.pub_id = publisher_006.pub_id
	and
		author_006.title = 'ABC';
```

**Output**
```
DISTRIBUTOR          CITY                   DISCOUNT      PRICE
-------------------- -------------------- ---------- ----------
BUG TREE             BHOPAL                       20        250
```

### Question 5
Get the detail of all the publisher who are giving more discount than the average discount.

**Query**
```sql
select * from publisher_006
where discount > (select avg(discount) from publisher_006);
```

**Output**
```
PUB_ PUB_NAME             DISTRIBUTOR          CITY                   DISCOUNT     CREDIT
---- -------------------- -------------------- -------------------- ---------- ----------
P1   S K KATARIA          BUG TREE             BHOPAL                       20         90
P4   LAXMI PUBLICATION    ORION                INDORE                       20         60
P5   KALYANI              RELATIONAL           DELHI                        25         46
```

### Question 6
Get the name of all distributors who are supplying the book whose author is ‘AJAY’.

**Query**
```sql
select distributor, city, discount, price
from author_006, publisher_006
where
	author_006.pub_id = publisher_006.pub_id
	and
		author_006.author_name = 'AJAY';
```

**Output**
```
DISTRIBUTOR          CITY                   DISCOUNT      PRICE
-------------------- -------------------- ---------- ----------
BUG TREE             BHOPAL                       20        600
```

### Question 7
Get detail of all the author whose book price is greater than the maximum of the average category.

**Query**
```sql
select * from author_006
where price > (select max(avg(price))
		from author_006 group by category);
```

**Output**
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE
---------- -------------------- -------------------- ---- ---------- ---------- ----------
       456 MNP                  NISHA                P1   DBMS             2007        500
       678 SDP                  AJAY                 P1   DSA              2009        600
```

### Question 8
Get the title of all the books that are in author table and for which an order is placed.

**Query**
```sql
select
	order_006.order_id,
	author_006.title,
	order_006.qty
from order_006
inner join author_006
	on order_006.isbn = author_006.isbn;
```

**Output**
```
  ORDER_ID TITLE                       QTY
---------- -------------------- ----------
         1 ABC                         100
         2 DEF                          40
         3 PQR                          40
         4 MNP                          50
         5 CDR                         100
         6 SDP                          50
```

### Question 9
Get the detail of author in ascending order of year of publication for which an order is placed.

**Query**
```sql
select
  author_006.*, order_006.qty as "Order Qty"
from order_006
inner join author_006
  on order_006.isbn = author_006.isbn
order by author_006.year desc;
```

**Output**
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE  Order Qty
---------- -------------------- -------------------- ---- ---------- ---------- ---------- ----------
       123 ABC                  IMRAN                P1   DSA              2010        250        100
       345 PQR                  SANTI                P3   DBMS             2010        230         40
       678 SDP                  AJAY                 P1   DSA              2009        600         50
       234 DEF                  RAVI                 P2   OS               2009        270         40
       456 MNP                  NISHA                P1   DBMS             2007        500         50
       567 CDR                  PANKAJ               P4   DSA              2005        300        100
```

### Question 10
Get the second maximum price of the book.

**Query**
```sql
select * from author_006
where price = (
  select max(price) from author_006
    where price < (select max(price) from author_006));
```

**Output**
```
      ISBN TITLE                AUTHOR_NAME          PUB_ CATEGORY         YEAR      PRICE
---------- -------------------- -------------------- ---- ---------- ---------- ----------
       456 MNP                  NISHA                P1   DBMS             2007        500
```

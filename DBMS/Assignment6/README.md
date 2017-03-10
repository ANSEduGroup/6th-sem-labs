# Assignment 6

**Author**

- Primary Key : ISBN
- Foreign Key : PUB_ID references Publisher table.
- Constraint : Price should always be more than 50.

| ISBN | TITLE | AUTHOR_NAME | PUB_ID | CATEGORY | YEAR | PRICE | 
|------|-------|-------------|--------|----------|------|-------| 
| 123  | ABC   | IMRAN       | P1     | DSA      | 2010 | 250   | 
| 234  | DEF   | RAVI        | P2     | OS       | 2009 | 270   | 
| 345  | PQR   | SANTI       | P3     | DBMS     | 2010 | 230   | 
| 456  | MNP   | NISHA       | P1     | DBMS     | 2007 | 500   | 
| 567  | CDR   | PANKAJ      | P4     | DSA      | 2005 | 300   | 
| 678  | SDP   | AJAY        | P1     | DSA      | 2009 | 600   | 

**Publisher**

- Primary Key : PUB_ID
- Constraint : PUB_ID should always start with ‘P’.

| PUB_ID | PUB_NAME          | DISTRIBUTOR | CITY   | DISCOUNT | CREDIT | 
|--------|-------------------|-------------|--------|----------|--------| 
| P1     | S K KATARIA       | BUG TREE    | BHOPAL | 20       | 90     | 
| P2     | PQR AND SONS.     | KATSON      | DELHI  | 15       | 45     | 
| P3     | RJB PUBLISHER     | CROSS WORD  | BHOPAL | 15       | 30     | 
| P4     | LAXMI PUBLICATION | ORION       | INDORE | 20       | 60     | 
| P5     | KALYANI           | RELATIONAL  | DELHI  | 25       | 46     | 

**Order**

- Primary Key : ORDER_ID
- Foreign Key : ISBN references Author table.
- Foreign Key : PUB_ID references Publisher Table
- Constraint : qty should be more than 0.

| ORDER ID | ISBN | PUB ID  | QTY | 
|----------|------|---------|-----| 
| 1        | 123  | P1      | 100 | 
| 2        | 234  | P2      | 40  | 
| 3        | 345  | P3      | 40  | 
| 4        | 456  | P1      | 50  | 
| 5        | 567  | P4      | 100 | 
| 6        | 678  | P1      | 50  | 


## Questions

1.	Get the titles of the book whose price is more than the average price.
2.	Get the detail of publishers who are supplying the title ‘PQR’ to the book shop.
3.	Get the detail of all books whose price is less than the average price of ‘DBMS’ book.
4.	Get the name of distributor who are supplying book ‘ABC’
5.	Get the detail of all the publisher who are giving more discount than the average discount.
6.	Get the name of all distributors who are supplying the book whose author is ‘AJAY’.
7.	Get detail of all the author whose book price is greater than the maximum of the average category.
8.	Get the title of all the books that are in author table and for which an order is placed.
9.	Get the detail of author in ascending order of year of publication for which an order is placed.
10.	Get the second maximum price of the book.

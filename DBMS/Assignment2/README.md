<h1 align="center">Assignment 2</h1>

**Create the following tables and insert the records in the tables as mentioned**

### HOTEL

| hotel_no | name  | address | 
|----------|-------|---------| 
| H1       | GRAND | KOLKATA | 
| H2       | TAJ   | MUMBAI  | 
| H3       | PURI  | PURI    | 
| H4       | ITC   | KOLKATA | 
| H5       | PARK  | CHENNAI | 

### ROOM

| room_no | hotel_no | type  | price | 
|---------|----------|-------|-------| 
| R1      | H1       | AC    | 2000  | 
| R1      | H2       | DELUX | 2500  | 
| R2      | H1       | NONAC | 1000  | 
| R2      | H2       | NONAC | 1000  | 
| R2      | H3       | AC    | 2900  | 
| R3      | H4       | AC    | 1800  | 
| R4      | H5       | DELUX | 3000  | 

### BOOKING

| hotel_no | guest_no | room_no | date_from  | date_to    | 
|----------|----------|---------|------------|------------| 
| H1       | G1       | R1      | 2013-01-01 | 2013-01-08 | 
| H1       | G2       | R2      | 2013-01-12 | 2013-01-18 | 
| H2       | G3       | R1      | 2013-01-01 | 2013-01-08 | 
| H2       | G4       | R2      | 2013-01-18 | 2013-01-28 | 
| H3       | G7       | R2      | 2013-01-21 | 2013-01-28 | 
| H4       | G5       | R3      | 2013-01-10 | 2013-01-18 | 
| H5       | G6       | R4      | 2013-01-11 | 2013-01-18 | 

### GUEST

| guest_no | name  | address | 
|----------|-------|---------| 
| G1       | RAM   | MUMBAI  | 
| G2       | SHYAM | KOLKATA | 
| G3       | JADU  | KOLKATA | 
| G4       | MADHU | KOLKATA | 
| G5       | SMITH | CHENNAI | 
| G6       | JONES | CHENNAI | 
| G7       | RIMI  | KOLKATA | 


## Questions
1. List all the hotels in Kolkata.
2. List the room details of hotel no H1.
3. List the names of the guests from Chennai.
4. List the guest_no-s of the guests who stayed from 01-01-2013 to 08-01-2013.
5. List the details of the rooms where price is > 2000.
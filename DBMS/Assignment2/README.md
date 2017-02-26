<h1 align="center">Assignment 2</h1>

**Create the following tables and insert the records in the tables as mentioned**

### HOTEL

| hotel_no | name    | address | 
|----------|---------|---------| 
| H1       | PURI    | PURI    | 
| H2       | TAJ     | MUMBAI  | 
| H3       | SONALI  | PURI    | 
| H4       | ITC     | KOLKATA | 
| H5       | PARK    | CHENNAI | 
| H6       | SAMUDRA | CHENNAI | 

### ROOM

| room_no | hotel_no | type  | price | 
|---------|----------|-------|-------| 
| R1      | H1       | AC    | 2000  | 
| R1      | H2       | DELUX | 2500  | 
| R1      | H6       | AC    | 4000  | 
| R2      | H1       | NONAC | 1000  | 
| R2      | H2       | NONAC | 1000  | 
| R2      | H3       | AC    | 3900  | 
| R2      | H6       | NONAC | 1500  | 
| R3      | H4       | AC    | 1800  | 
| R4      | H5       | DELUX | 4000  | 

### BOOKING

| hotel_no | guest_no | date_from  | date_to    | room_no | 
|----------|----------|------------|------------|---------| 
| H1       | G1       | 2016-01-01 | 2016-01-08 | R1      | 
| H1       | G2       | 2016-01-12 | 2016-01-18 | R2      | 
| H2       | G3       | 2016-01-01 | 2016-01-08 | R1      | 
| H2       | G4       | 2016-01-18 | 2016-01-28 | R2      | 
| H3       | G7       | 2016-01-21 | 2016-01-28 | R2      | 
| H4       | G5       | 2016-01-10 | 2016-01-18 | R3      | 
| H5       | G6       | 2016-01-11 | 2016-01-18 | R4      | 
| H6       | G8       | 2016-01-12 | 2016-01-20 | R1      | 
| H6       | G9       | 2016-01-21 | 2017-01-28 | R2      | 

### GUEST

| guest_no | name  | address | 
|----------|-------|---------| 
| G1       | RAJA  | MUMBAI  | 
| G2       | SIMA  | KOLKATA | 
| G3       | RAHUL | KOLKATA | 
| G4       | MILI  | KOLKATA | 
| G5       | SMITH | CHENNAI | 
| G6       | JONES | CHENNAI | 
| G7       | RIMI  | KOLKATA | 
| G8       | REKHA | CHENNAI | 
| G9       | RISHI | PURI    | 


## Questions
1. List all the hotels in Kolkata.
2. List the room details of hotel no H1 & H6.
3. List the names of the guests who are not from Chennai.
4. List the guest_no-s of the guests who stayed from 01-01-2016 to 08-01-2016.
5. List the details of the rooms where price is > 2000 and less than 3500.
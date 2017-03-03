<h1 align="center">Assignment 2</h1>

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
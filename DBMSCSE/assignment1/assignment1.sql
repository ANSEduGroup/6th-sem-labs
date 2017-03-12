-- Customer table `cust`
create table cust (
  cust_id varchar(3) primary key,
  iname varchar(15),
  fname varchar(15),
  area varchar(2),
  phone_no numeric(8)
);

-- Movie table movie
create table movie (
  mv_no numeric(2) primary key,
  title varchar(25),
  type varchar(10),
  star varchar(25),
  price numeric(8,2)
);

-- Invoice table invoice
create table invoice (
  inv_no varchar(3) primary key,
  mv_no varchar(2),
  cust_id varchar(3),
  issue_date date,
  return_date date,
  CONSTRAINT mv_no_fk
  FOREIGN KEY (mv_no) REFERENCES movie(mv_no),
  CONSTRAINT cust_id_fk
  FOREIGN KEY (cust_id) REFERENCES cust(cust_id)
);


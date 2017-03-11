-- Publisher Table
create table publisher_006 (
  pub_id varchar(4) primary key constraint pub_id_check_006 check (pub_id like 'P%'),
  pub_name varchar(20),
  distributor varchar(20),
  city varchar(20),
  discount smallint,
  credit smallint
);

-- Author Table
create table author_006 (
  isbn bigint primary key,
  title varchar(20),
  author_name varchar(20),
  pub_id varchar(4),
  category varchar(10),
  year smallint,
  price int constraint author_price_check_006 check (price > 50),
  constraint author_pub_id_fk_006
  foreign key (pub_id)
  references publisher_006(pub_id)
);

-- Order Table
create table order_006 (
  order_id int primary key,
  isbn bigint,
  pub_id varchar(4),
  qty int constraint order_qty_check_006 check (qty > 0),
  constraint order_isbn_fk_006
  foreign key (isbn)
  references author_006(isbn),
  constraint order_pub_id_fk_006
  foreign key (pub_id)
  references publisher_006(pub_id)
);

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
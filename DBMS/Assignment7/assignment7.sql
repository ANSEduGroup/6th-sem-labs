-- Create view of author table where price >= 300
 create view AUTHOR_VIEW_IT_01 as
 select author_006.* from author_006
 where price >= 300;

-- Select all the records from author view
 select * from author_view_it_01;

-- Select average price from the author view
select avg(price) as "Avg Price" from author_view_it_01;

-- Select the details of author where year = 2005 or 2007
select * from author_view_it_01 where year = 2005 or year = 2007;

-- Insert two values into the view
insert into author_view_it_01 values (789,'PQR','AJAY','P3','DSA',2012,640);
insert into author_view_it_01 values (901,'DFG','IMRAN','P2','DBMS',2013,270);

-- update the view , category OS - > DSA
update author_view_it_01 set category = 'OS' where category = 'DSA';

-- delete the record from view where isbn = 901
delete from author_view_it_01 where isbn = 901;

-- create view author_publisher(ISBN, author_name, title, pub_id, pub_name, city)
create view author_publisher_it_01 as
    select author_006.isbn, author_006.author_name, author_006.title,
    publisher_006.pub_id, publisher_006.pub_name, publisher_006.city
    from author_006, publisher_006
where author_006.pub_id = publisher_006.pub_id;

-- Select author namees whose publisher name is same 
column authors format a50;

select
  pub_name,
  listagg(author_name, ',') within group (order by pub_name) as authors
from author_publisher_it_01
group by pub_name;


-- For ORACLE V < 11gR2
/*
column authors format a50;

select
  pub_name,
  wm_concat(author_name) as authors
from author_publisher_it_01
group by pub_name;
*/

-- Select title, author, publisher name and distributor name whose city is neither 'DELHI' nor 'INDORE'
select
  TITLE,
  AUTHOR_NAME,
  PUB_NAME
  FROM AUTHOR_PUBLISHER_IT_01
WHERE CITY NOT IN ('DELHI', 'INDORE');
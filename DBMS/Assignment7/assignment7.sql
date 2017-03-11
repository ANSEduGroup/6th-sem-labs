 create view AUTHOR_VIEW_IT_01 as
 select author_006.* from author_006
 where price >= 300;

 select * from author_view_it_01;

select avg(price) as "Avg Price" from author_view_it_01;

select * from author_view_it_01 where year = 2005 or year = 2007;

insert into author_view_it_01 values (789,'PQR','AJAY','P3','DSA',2012,640);
insert into author_view_it_01 values (901,'DFG','IMRAN','P2','DBMS',2013,270);

update author_view_it_01 set category = 'OS' where category = 'DSA';

delete from author_view_it_01 where isbn = 901;
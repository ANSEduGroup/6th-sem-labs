-- 1
select * from author_006
where price > (select avg(price) from author_006);

-- 2
select publisher_006.* from publisher_006, author_006
where author_006.pub_id = publisher_006.pub_id and
author_006.title = 'PQR';

-- 3
select * from author_006
where price < (select avg(price) from author_006
	where category = 'DBMS');

-- 4
select distributor, city, discount, price
from author_006, publisher_006
where
	author_006.pub_id = publisher_006.pub_id
	and
		author_006.title = 'ABC';

-- 5
select * from publisher_006
where discount > (select avg(discount) from publisher_006);

-- 6
select distributor, city, discount, price
from author_006, publisher_006
where
	author_006.pub_id = publisher_006.pub_id
	and
		author_006.author_name = 'AJAY';

-- 7
select * from author_006
where price > (select max(avg(price))
		from author_006 group by category);

-- 8
select
	order_006.order_id,
	author_006.title,
	order_006.qty
from order_006
inner join author_006
	on order_006.isbn = author_006.isbn;

-- 9
select
	author_006.*, order_006.qty as "Order Qty"
from order_006
inner join author_006
	on order_006.isbn = author_006.isbn
order by author_006.year desc;

-- 10
select * from author_006
where price = (
	select max(price) from author_006
		where price < (select max(price) from author_006));
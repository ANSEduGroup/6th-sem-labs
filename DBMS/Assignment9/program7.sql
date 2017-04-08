create or replace procedure get_order_info
as
begin
	for aRow in (select order_id, order_006.isbn, qty from order_006, publisher_006, author_006 where publisher_006.pub_id = order_006.pub_id and author_006.isbn = order_006.isbn and author_006.price > 50)
	loop
		dbms_output.put_line('order id: '||aRow.order_id);
		dbms_output.put_line('ISBN: '|| aRow.isbn);
		dbms_output.put_line('Qty: '|| aRow.qty);
	end loop;
end get_order_info;
/


set serveroutput on;

declare
	b_title author_006.title%type;
	b_qty order_006.qty%type;
	m_qty order_006.qty%type := 0;
	cursor o_qty is
		select author_006.title, order_006.qty 
			from author_006, order_006 where
			author_006.isbn = order_006.isbn;
	cursor max_qty is
		select max(qty) from order_006;
begin
	open max_qty;
	fetch max_qty into m_qty;
	close max_qty;

	open o_qty;
	loop
	fetch o_qty into b_title, b_qty;
		exit when o_qty%notfound;
		if b_qty = m_qty then
			dbms_output.put_line(b_title);
		end if;
	end loop;
	close o_qty;
end;
/

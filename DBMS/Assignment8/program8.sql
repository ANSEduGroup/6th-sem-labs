set serveroutput on;

declare
	b_pub_name publisher_006.pub_name%type;
	b_discount publisher_006.discount%type;
	m_discount publisher_006.discount%type := 0;
	cursor b_publishers is
		select pub_name, discount from publisher_006;
	cursor max_discount is
		select max(discount) from publisher_006;
begin
	open max_discount;
	loop
	fetch max_discount into m_discount;
		exit when max_discount%notfound;
	end loop;
	close max_discount;
	open b_publishers;
	loop
	fetch b_publishers into b_pub_name, b_discount;
		exit when b_publishers%notfound;
		if b_discount = m_discount then
			dbms_output.put_line(b_pub_name);
		end if;
	end loop;
	close b_publishers;
end;
/


set serveroutput on;

declare
	b_title author_006.title%type;
	b_price author_006.price%type;
	m_price author_006.price%type := 0;
	cursor b_authors is
		select title, price from author_006;
	cursor max_price is
		select max(price) from author_006;
begin
	open max_price;
	loop
	fetch max_price into m_price;
		exit when max_price%notfound;
	end loop;
	close max_price;
	open b_authors;
	loop
	fetch b_authors into b_title, b_price;
		exit when b_authors%notfound;
		if b_price = m_price then
			dbms_output.put_line(b_title);
		end if;
	end loop;
	close b_authors;
end;
/


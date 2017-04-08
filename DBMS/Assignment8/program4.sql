declare
	name author_006.author_name%type;
	b_price author_006.price%type;

	cursor n_authors is
		select author_name, price from author_006;
begin
	open n_authors;
	loop
	fetch n_authors into name, b_price;
		exit when n_authors%notfound;
		if b_price> 200 then
			dbms_output.put_line(name);
		end if;
	end loop;
	close n_authors;
end;
/

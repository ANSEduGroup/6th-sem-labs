set serveroutput on

declare
	name author_006.author_name%type;
	n_category author_006.category%type;
	p_category author_006.category%type;

	cursor n_author is
		select author_name, category from author_006;
	cursor p_author is
		select category from author_006 where
			author_name = 'PANKAJ';
begin
	open p_author;
	fetch p_author into p_category;
	close p_author;

	open n_author;
	loop
	fetch n_author into name, n_category;
		exit when n_author%notfound;
		if n_category = p_category then
			dbms_output.put_line(name);
		end if;
	end loop;
	close n_author;
end;
/

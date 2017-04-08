declare
	p_id publisher_006.pub_id%type;
	p_name publisher_006.pub_name%type;
	p_city publisher_006.city%type;

	cursor c_publisher is
		select pub_id, pub_name, city from publisher_006;
begin
	open c_publisher;
	loop
	fetch c_publisher into p_id, p_name, p_city;
		exit when c_publisher%notfound;
		if p_city not in ('DELHI') then
			dbms_output.put_line(p_id||' '||p_name||' '||p_city);
		end if;
	end loop;
	close c_publisher;
end;
/


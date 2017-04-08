declare
	x number := &x;
	y number := &y;
	i number;
	j number;
	cnt number:=0;
begin
	for i in x..y
	loop
		for j in 1..i
		loop
			if mod(i,j)=0 then
				cnt:=cnt+1;
			end if;
		end loop;
		if cnt <= 2 then
			if mod(i,2)!=0 then
				dbms_output.put_line(i);
			end if;
		end if;
		cnt:=0;
	end loop;
end;
/


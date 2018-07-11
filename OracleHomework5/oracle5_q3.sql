declare
fact number :=1;
i number;
begin
for n in 2..5
loop
if fact<10 then
fact:=fact + n;
 
end if;
DBMS_OUTPUT.PUT_LINE(fact);
end loop;
END;
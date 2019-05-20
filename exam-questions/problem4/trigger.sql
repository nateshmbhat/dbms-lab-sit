create or replace trigger tr4
before insert on car2
for each row
declare
    cur date;

begin
select sysdate into cur from dual;
if(cur<:NEW.dop) then
    raise_application_error(-20009,'incorrect date');
end if;
end;
/
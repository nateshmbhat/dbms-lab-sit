create or replace trigger tr5
before insert on doggg

for each row
declare
    cnt number;

begin
select count(*) into cnt from ownerofdog o,doggg d where (o.ssn=d.ssn and o.ssn=:NEW.ssn);

if(cnt>3) then
    raise_application_error(-20010,'Capacity of the owner crossed');
end if;
end;
/
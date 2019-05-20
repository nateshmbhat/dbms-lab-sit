create or replace trigger tr6
before insert on course

for each row
declare
    cnt number ; 

BEGIN
    select count(*) int cnt from enroll where usn=:NEW.usn ; 
    if(cnt>6) then
        raise_application_error(-20000 , 'max of 6 subs reached ... ') ; 
    end if;
end ; 
/
create or replace trigger max_crew
before insert on crew

for each row
declare
    c number ;

begin

select count(*) into c from crew where name=:NEW.name ;

if(c>5) then
    raise_application_error(-2000 , 'dude too much crew .... ') ; 
end if ; 

end;
/
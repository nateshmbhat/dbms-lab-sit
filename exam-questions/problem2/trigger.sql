create or replace trigger movieDelete
before delete on movie1

for each row
declare
    yearval number; 

BEGIN
select to_char(sysdate , 'YYYY') into yearval from dual ; 

if(yearval=:OLD.year) then
    raise_application_error(-20000 , 'cant delete current year movie') ; 
end if ;

end ; 
/

create or replace trigger tr8
before insert on loans
for each row
declare
    cincome number ; 

begin
select income into cincome from customer c where c.cid=:NEW.cid;

if(:NEW.amount > 2*cincome) then
    raise_application_error(-20009,'LIMIT EXCEEDED');
end if;

end;
/
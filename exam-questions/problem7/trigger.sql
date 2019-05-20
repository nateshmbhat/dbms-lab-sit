create or replace trigger last_trans
before insert on cust_acc
for each row
declare
    cur_date date;

begin
    select sysdate into cur_date from dual;
    if((:NEW.last_tr-cur_date)<=0) then
        raise_application_error(-20006,'INVALID DATE');
    end if;
end;
/
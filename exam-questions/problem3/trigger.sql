create or replace trigger tr3
before delete on cartoon

for each row
declare
    cur number;

begin
select to_char(sysdate,'YYYY')into cur from dual;
if(:OLD.year=cur) then
    raise_application_error(-20019,'Cannot delete');
end if;
end;
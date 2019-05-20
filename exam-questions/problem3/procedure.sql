create or replace procedure pr3(s number)
is
x cartoon%rowtype;
cursor c is select * from cartoon c where c.year=s;

begin
for x in c loop
sys.dbms_output.put_line(x.title);
end loop;
end;
/
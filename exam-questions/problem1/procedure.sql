create or replace procedure print(sname varchar)
is

x crew%rowtype ; 
cursor c is select * from crew where name=sname ; 

begin

for x in c loop
    sys.dbms_output.put_line('crew no = ' || x.crew_no || ' , studioname = ' || x.name) ; 
end loop ; 

end;
/
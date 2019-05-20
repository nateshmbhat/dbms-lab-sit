create or replace procedure listmovies(yearval int)
is

X movie1%rowtype ; 
cursor c is select * from movie1 where year=yearval ; 

begin 
for X in c loop
    sys.dbms_output.put_line('title = '|| X.title || ' , sensor_no = ' || X.sensor_no) ; 
end loop ; 
end ; 
/
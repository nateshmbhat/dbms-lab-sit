create or replace procedure pr5(pur_date date)
is
X1 dog%rowtype;
X owner%rowtype;
cursor c is select o.* from ownerofdog o,doggg d where o.ssn=d.ssn and
dop=pur_date;
cursor f is select d.* from ownerofdog o,doggg d where o.ssn=d.ssn and
dop=pur_date;

begin
sys.dbms_output.put_line('OWNER DETAILS');

for X in c loop
    sys.dbms_output.put_line(X.oname||' '||X.ssn||' '||X.address);
end loop;
    sys.dbms_output.put_line('DOG DETAILS');
for X1 in f loop
    sys.dbms_output.put_line(X1.dname||' '||X1.ssn||' '||X1.sex);
end loop;
end;
/
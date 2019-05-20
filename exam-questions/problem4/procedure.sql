create or replace procedure pr4(myyear number)
is

c car2%rowtype ; 
o owner2%rowtype ; 

cursor car is select * from car2 where myyear=to_char(car2.DOP , 'YYYY') ; 
cursor owner is select o1.* from owner2 o1 , car2 c1 where c1.ssn=o1.ssn and to_char(c1.DOP ,'YYYY')=myyear ; 

BEGIN
for c in car loop
    sys.dbms_output.put_line('regno = ' ||c.rgno) ; 
end loop ; 

for o in owner loop
    sys.dbms_output.put_line('ssn = ' ||o.ssn) ; 
end loop ; 

end ; 
/
create or replace procedure pr8(name varchar)
is
X loans%rowtype;
cursor c is select l.* from customer c1, loans l where c1.cname=name and
l.cid=c1.cid;

begin
sys.dbms_output.put_line('LOAN DETAILS');

for X in c loop
    sys.dbms_output.put_line(X.lno||' '||X.type||' '||X.amount);
end loop;

end;
/
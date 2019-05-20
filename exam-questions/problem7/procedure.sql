create or replace procedure pr7
is
X customer%rowtype;

cursor maxAcc is select * from customer where c_id in (
            select c_id 
            from cust_acc group by c_id 
            having count(*)>=all(select count(*) from cust_acc group by c_id)
        ) ; 

cursor maxBal is select c.* from customer c , cust_acc ca , account a where ca.c_id=c.c_id and ca.acc_no=a.acc_no and a.balance=(select max(balance) from account) ; 

cursor maxjointacc is select c_id , count(*) 
from cust_acc 
group by c_id 
having count(*)>=all(select count(*) from cust_acc group by c_id) ; 

begin 

for X in maxAcc loop 
    sys.dbms_output.put_line('name = ' || X.name || ' , cid = ' || X.c_id ) ; 
end loop ; 

for X in maxBal loop 
    sys.dbms_output.put_line('name = ' || X.name || ' , cid = ' || X.c_id ) ; 
end loop ; 


for X in maxBal loop 
    sys.dbms_output.put_line('name = ' || X.name || ' , cid = ' || X.c_id ) ; 
end loop ; 

end;
/
-- 2.Write a stored procedure to display details of Item which are ordered on specific order_date

create or replace PROCEDURE display_Date(in_date Date)
IS
cursor A1 is
select  Ord.order_no , Ord.item_code
from order1 O1, ordering Ord
where O1.order_no = Ord.order_no and  O1.order_date = in_date  ; 
c1 Order1.order_no%type ; 
c2 Ordering.item_code%type ; 

BEGIN

open A1 ;
fetch A1 into c1 , c2 ; 
loop 
exit when A1%NOTFOUND ; 
dbms_output.put_line('Order.NO = '|| c1 || ' Item.No = ' || c2) ; 
end loop ; 
close A1 ; 
END ; 
/


-- 3.Write a stored procedure which accepts item_code and vendor_no as parameter and display the number of orders on the Item ordered by the vendor.


create or replace PROCEDURE order_display(itemcode varchar , vendorno varchar)
IS
cursor A1 IS
select  count(*)
from order1 O1, ordering Ord , indent I
where Ord.order_no = O1.order_no and
Ord.item_code = I.item_code and
O1.vendor_no = vendorno  and
I.item_code = itemcode ; 

QTY indent.quantity_demanded%Type ; 

BEGIN
open A1 ;

loop 

    exit when A1%NOTFOUND ; 
    fetch A1 into QTY ;
    dbms_output.put_line('No of Order = ' || QTY) ; 

end loop ; 

close A1 ; 
END ; 
/


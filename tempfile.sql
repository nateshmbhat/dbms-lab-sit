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


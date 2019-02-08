-- 1.
 
 select item_code , item_description , unit_price 
 from item
 where item_code in (select item_code from ordering ) ;


--  2.
select O.order_no , O.order_date , V.vendor_no , V.vendor_address , I.item_code , I.item_description , I.EOQ , Ord.quantity_received
from item I , order1 O , ordering Ord , vendor V
where I.item_code = Ord.item_code  and Ord.order_no = O.order_no and O.vendor_no = V.vendor_no
order by O.order_date ; 
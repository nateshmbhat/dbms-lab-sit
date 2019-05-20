-- Joint account list
select acc_no
from cust_acc
group by acc_no
having count(*) > 3 ; 
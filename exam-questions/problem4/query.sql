select ssn , name , address
from owner2
where ssn in ( 
    select ssn 
    from car2 
    group by ssn having count(*)>=all(
        select count(*) 
        from car2 
        group by ssn 
    )
); 
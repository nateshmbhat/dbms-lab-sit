
-- HOW TO NAME An UNnamed CONSTRAINT 
-- https://dba.stackexchange.com/questions/226963/how-to-name-a-constraint-which-was-unnamed-during-the-table-creation/226970


-- delete a voucher whose number is 3 
delete from voucher where voucher_no=3  ; -- make sure 3 is not within quotes since its not char data


-- Demonstrate groupby ,  having , orderby clauses 
select item_code , count(*) from ordering 
group by item_code having count(*) > 1
order by item_code ; 


-- Demonstrate all aggregate functions in sql 
select  item_code , min(quantity_received) from ordering group by  item_code ; 
select count(*) from ordering ; 
select avg(quantity_received) from ordering ; 
select min(quantity_received) from ordering ; 
select max(quantity_received) from ordering ; 


-- List of orders between jan 2000 to jan 2006 
select * from order1 
where order_date between to_date('jan-00' , 'mm-yy') and to_date('jan-06') ; 


-- ALL JOINS :  { 

-- 1. Left outer join
select * from indent I , section S
where I.section_code = 

-- 2. Right outer join



-- 3. Right outer join

-- }


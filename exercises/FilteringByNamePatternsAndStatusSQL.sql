-- Write a SQL query below --

select name,round(price,2)price,round(rating,1)rating
from products
where name like '%Monitor%' 
AND is_active = true
order by price asc;
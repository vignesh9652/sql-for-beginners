-- Write a SQL query below --

select name,round(price,2) as price,
from products
where price > 100.00
order by price asc;
-- Write a SQL query below --

select c.first_name , c.last_name , a.city , a.country
from customers c
inner join addresses a
on c.id = a.customer_id
where is_active = true 
and is_default = true
order by c.last_name asc;
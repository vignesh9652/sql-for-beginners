-- Write a SQL query below --
select
    p.name as product_name,
    c.name as category_name,
    IFNULL(SUM(oi.quantity), 0) as total_sold
from products p
LEFT JOIN categories c
ON p.category_id = c.id
LEFT JOIN order_items oi
ON p.id = oi.product_id
GROUP BY p.name, c.name
ORDER BY total_sold DESC;


-- query 1: order detail JOIN
select *
FROM project_1.public.orders_table AS o
INNER JOIN project_1.public.customer_table AS c
    ON o.customer_id = c.customer_id
INNER JOIN project_1.public.products_table AS p
    ON o.product_id = p.product_id;

--Query 2: revenue per customer
select c.customer_name,
       sum(p.unit_price) as unit_price
FROM project_1.public.orders_table AS o
INNER JOIN project_1.public.customer_table AS c
    ON o.customer_id = c.customer_id
INNER JOIN project_1.public.products_table AS p
    ON o.product_id = p.product_id
group by c.customer_name;

--Query 3: revenue per category
select p.category,
       sum(p.unit_price) as unit_price
FROM project_1.public.orders_table AS o
INNER JOIN project_1.public.customer_table AS c
    ON o.customer_id = c.customer_id
INNER JOIN project_1.public.products_table AS p
    ON o.product_id = p.product_id
group by p.category;

--Query 4: top 5 customers
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(c.customer_id) AS total_orders
FROM project_1.public.orders_table AS o
INNER JOIN project_1.public.customer_table AS c
    ON o.customer_id = c.customer_id
INNER JOIN project_1.public.products_table AS p
    ON o.product_id = p.product_id
GROUP BY 
    c.customer_id,
    c.customer_name
ORDER BY total_orders DESC
LIMIT 5;
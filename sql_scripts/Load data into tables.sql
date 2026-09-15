
--insert data into the new customer_table created 
INSERT INTO project_1.public.customer_table(customer_id, customer_name, email, province, signup_date)
SELECT 
    REGEXP_REPLACE(customer_id, '[^0-9]', '')::INT,
    customer_name::VARCHAR,
    email::VARCHAR,
    province::VARCHAR,
    signup_date::DATE
FROM project_1.public.customer;

--insert data into the new products_table created 
INSERT INTO project_1.public.products_table(product_id, product_name, category, unit_price)
SELECT 
    REGEXP_REPLACE(product_id, '[^0-9]', '')::INT,
    product_name::VARCHAR,
    category::VARCHAR,
    REGEXP_REPLACE(unit_price, '[^0-9]', '')::INT
FROM project_1.public.products;

--insert data into the new orders_table created 
INSERT INTO project_1.public.orders_table(order_id, customer_id, product_id, order_date, quantity)
SELECT 
    REGEXP_REPLACE(order_id, '[^0-9]', '')::INT AS order_id,
    REGEXP_REPLACE(customer_id, '[^0-9]', '')::INT AS customer_id,
    REGEXP_REPLACE(product_id, '[^0-9]', '')::INT AS product_id,
    order_date::DATE AS order_date,
    quantity::INT AS quantity
FROM project_1.public."ORDER";

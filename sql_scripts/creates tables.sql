--create database
create database project_1;

-- creates tables
create table project_1.public.customer_table(
 customer_id int, customer_name varchar(255), email varchar(255), province varchar(255), signup_date date
)

create table project_1.public.products_table(
 product_id int, product_name varchar(255), category varchar(255), unit_price int
)

create table project_1.public.orders_table(
 order_id int, customer_id int, product_id int, order_date date, quantity int
)
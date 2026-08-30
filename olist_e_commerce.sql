-- ====================
-- 1. sales analysis
-- ====================

-- 1. total revenue
select
sum(payment_value)::numeric as total_revenue
from payment;

-- 2. total orders
select count(distinct(customer_id))
from customer;

-- 3. average over value
select
sum(payment_value) / count(distinct order_id) as average_order_value
from payment;

-- =======================
-- 2. time analysis
-- =======================

-- 1. monthly revenue
with payment_date as (
select date.order_purchase_timestamp_year as "year" , date.order_purchase_timestamp_month as "month",
	payment.payment_value
	from date
	inner join payment
	on date.order_id = payment.order_id
)
select "year", "month",
sum(payment_value)
from payment_date
group by "year", "month"
order by "year" asc, "month" asc;

-- 2. monthly order
select order_purchase_timestamp_year as "year", date.order_purchase_timestamp_month as "month",
count(distinct(order_id))
from date
group by "year", "month"
order by "year" asc, "month" asc;

-- =========================
-- 3. product analysis
-- =========================

-- 1. top 10 product categories by revenue
with payment_category as(
select product.product_category_name as "category", orderitem.order_id, payment.payment_value
from product
inner join orderitem on product.product_id = orderitem.product_id
inner join payment on orderitem.order_id = payment.order_id
)

select "category",
sum(payment_value)::numeric as total_sales
from payment_category
group by "category"
order by "total_sales" desc;

-- 2. top 10 product categories by number of orders
with category_order as (
select product.product_category_name as "category", orderitem.order_id
from product
inner join orderitem on product.product_id = orderitem.product_id
)

select "category",
count(distinct(order_id)) as "orders"
from category_order
group by "category"
order by "orders" desc;

-- =========================
-- 4. customers analysis
-- =========================

-- 1. top 10 customer by spending
with customer_spend as (
select date.customer_id as customer, payment.payment_value as payment
from date
inner join payment on date.order_id = payment.order_id
)

select customer,
sum(payment)::numeric as spend
from customer_spend
group by customer
order by spend desc;

-- 2. customer repeat
with customer_repeat as (
select orderitem.order_item_id as orders , date.customer_id
from orderitem
inner join date on orderitem.order_id = date.order_id
)
select customer_id,
count(orders) as "order"
from customer_repeat
group by customer_id
order by "order" desc;

-- ===============================
-- 5. delivery analysis
-- ===============================

-- 1. average delivery time
select round(avg(delivery_days)::numeric,2) as average_delivery_days
from "date";

-- 2. late delivery rate
select
avg(case when is_late='Yes' then 1 else 0 end) *100 as late_rate
from "date";

-- ============================
-- 6. review analysis
-- ============================

-- 1. average review score
select round(avg(review_score)::numeric,2) as average_review_score
from review;

-- 2. review score vs delivery time
with review_delivery as (
select "date".is_late as late , review.review_score as review
from "date"
inner join review on "date".order_id = review.order_id 
)
select review, late,
count(review) as number_of_star
from review_delivery
group by review, late
order by review desc;

-- ===========================
-- 7. payment analysis
-- ===========================

-- 1. revenue by payment method
select payment_type,
sum(payment_value)::numeric as revenue
from payment
group by payment_type
order by revenue desc;

-- ==============================
-- 8. rank product categories by revenue
-- ==============================

with product_rank as (
select product.product_category_name as "category", payment.payment_value as revenue
from product
inner join orderitem on product.product_id = orderitem.product_id
inner join payment on orderitem.order_id = payment.order_id
)

select category,
sum(revenue)::numeric,
dense_rank() over(order by sum(revenue) desc) as ranking
from product_rank
group by category;
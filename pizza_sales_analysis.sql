select * from pizza_sales;

-- total revenue --
select sum(total_price) as total_revenue from pizza_sales;

-- total pizza sold --
select sum(quantity) as total_pizza_sold from pizza_sales;

-- total order -- 
select count(distinct order_id) as total_orders from pizza_sales;

-- average order value--
select sum(total_price) / count(distinct order_id) as AOV from pizza_sales;

-- average pizza per order-- 
 select sum(quantity) / count(distinct order_id) as APO from pizza_sales;
 
 -- Daily Trend for Total Orders --
 SELECT dayname(str_to_date(order_date, '%d-%m-%Y')) as order_day, count(distinct order_id) as total_orders
 from pizza_sales
 group by order_day
 order by field(order_day, 'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');
 
 -- Hourly Trend for Total Orders-- 
 select hour(str_to_date(order_time, '%H:%i:%s')) as order_hour , count(distinct order_id) as total_orders
 from pizza_sales
 group by order_hour
 order by order_hour;
 
 -- Percentage of Sales by Pizza Category-- 
 select pizza_category, round(sum(total_price), 2) as category_sales, 
 round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales where month(str_to_date(trim(order_date), '%d-%m-%Y')) = 1), 2) as PoS
 from pizza_sales
 where month(str_to_date(trim(order_date), '%d-%m-%Y')) = 1
 group by pizza_category
 order by PoS DESC;

-- Percentage of Sales by Pizza Size --
select pizza_size, sum(total_price) AS total_sales, round(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) , 2) as PoS
from pizza_sales
group by pizza_size
order by PoS;

-- Total Pizza Sold by Pizza Category -- 
select sum(quantity) as total_pizza_sold, pizza_category from pizza_sales
group by pizza_category
order by pizza_category;

-- Top 5 Bestseller by Pizza Category -- 
select pizza_category, pizza_name, sum(quantity) as total_pizza_sold from pizza_sales
group by pizza_category, pizza_name
order by  total_pizza_sold desc
limit 5;

-- Top 5 Bestseller by total revenue -- 
select pizza_category, pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_category, pizza_name
order by  total_revenue desc
limit 5;

-- Bottom 5 worst seller by pizza category -- 
 select pizza_category, pizza_name, sum(quantity) as total_pizza_sold from pizza_sales
 group by pizza_category, pizza_name
 order by total_pizza_sold
 limit 5;
 
-- Bottom 5 worst seller by total revenue -- 
select pizza_category, pizza_name, sum(total_price) as total_revenue from pizza_sales
group by pizza_category, pizza_name
order by total_revenue
limit 5;
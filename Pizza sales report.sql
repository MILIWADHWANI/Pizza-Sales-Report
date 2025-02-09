Create database pizza_report;
use pizza_report;
CREATE TABLE pizza_orders (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(10),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100)
);
select * from pizza_orders limit 48621;

/* KPI's Requirement*/
/* 1) Total Revenue*/
Select sum(total_price) as Total_Revenue from pizza_orders;

/*Average order value*/
Select (sum(total_price) / count(distinct order_id)) as Avg_order_value from pizza_orders;

/*Total Pizza Sold*/
Select sum(quantity) as Total_pizza_sold from pizza_orders;

/*Total Order Placed*/
Select count( distinct order_id) as Total_orders from pizza_orders;

/*Average Pizza per order*/
Select cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as Avg_pizza_order
from pizza_orders; 

/*Chart Requirement*/
/*Daily trends for total orders*/
Select dayname(order_date) as Order_days, count(distinct order_id) as total_orders
from pizza_orders
group by Order_days;

/*Monthly trends for total orders*/
Select monthname(order_date) as Order_months, count(distinct order_id) as total_orders
from pizza_orders
group by Order_months;

/*Percentage of sales by pizza category*/
SELECT 
    pizza_category, 
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_orders) AS perc_total_sales
FROM pizza_orders
GROUP BY pizza_category;

/*Percentage sales by pizza size*/
Select
     pizza_size,
     CAST(sum(total_price)*100 / (Select sum(total_price) from pizza_orders)as decimal(10,2)) as perc_total_sales
FROM pizza_orders
GROUP BY pizza_size;

/*Total Pizza sold by Pizza Category*/
SELECT
      pizza_category, sum(quantity) as Total_Pizza
FROM pizza_orders
group by pizza_category;

/*Top 5 pizza by revenue*/
SELECT 
      pizza_name, sum(total_price) as Revenue
FROM pizza_orders
GROUP BY pizza_name
ORDER BY Revenue DESC
LIMIT 5;

/*Bottom 5 Pizza by Revenue*/
SELECT 
      pizza_name, sum(total_price) as Revenue
FROM pizza_orders
GROUP BY pizza_name
ORDER BY Revenue 
LIMIT 5;

/*TOP 5 Pizza by Quantity*/
SELECT 
      pizza_name, sum(quantity) as Revenue
FROM pizza_orders
GROUP BY pizza_name
ORDER BY Revenue desc
LIMIT 5;

/*Bottom 5 Pizza by Quantity*/
SELECT 
      pizza_name, sum(quantity) as Revenue
FROM pizza_orders
GROUP BY pizza_name
ORDER BY Revenue 
LIMIT 5;
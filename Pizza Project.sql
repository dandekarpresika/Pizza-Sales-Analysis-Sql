create database pizza;

use pizza;

select*from ps1;

#Que 1. Total Revenue

select round(sum(total_price),2) as `Total revenue` from ps1;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 2. Average order value

select sum(total_price)/count(distinct(order_id))  as `Avg order value` from ps1;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 3. Total pizza sold

select sum(quantity) as `Total pizza sold` from ps1;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 4.Daily Trend for total orders

select dayname(str_to_date(order_date, '%d-%m-%y')) as `Order day`,
count(distinct order_id) as  Total_orders from ps1
group by dayname(str_to_date(order_date, '%d-%m-%y'))
order by Total_orders
desc;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 5. Total orders

select count(distinct(order_id)) as `Total orders` from ps1;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 6. Average pizza per order

select sum(quantity)/count(distinct(order_id)) as `Avg pizza per order` from ps1;


#_________________________________________________________________________________________________________________________________________________________________________

#Que 7. Monthly Trend for order

select monthname(str_to_date(order_date, '%d-%m-%Y')) as `Order month`,
count(distinct order_id) as  Total_orders from ps1
group by `Order month`
order by Total_orders
desc;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 8. % Of sales by pizza category

select pizza_category,round(sum(total_price),2) as total_revenue,
round(sum(total_price)*100/(select sum(total_price) from ps1),2) as Percentage from ps1
group by pizza_category;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 9. Total pizza sold by pizza category

select `pizza_category`,sum(quantity) as `Total qty sold` from ps1
group by `pizza_category`
order by `Total qty sold` desc;

#_________________________________________________________________________________________________________________________________________________________________________

# Que 10. Bottom 5 pizza by quanity


select pizza_name,sum(quantity) as `Total qty` from ps1
group by pizza_name
order by `Total qty` asc
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 11. Top 5 pizza by total order

select pizza_name,count(distinct(order_id)) as `Total pizza order` from ps1
group by pizza_name
order by `Total pizza order` desc
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 12. Bottom 5 pizza by total order

select pizza_name,count(distinct(order_id)) as `Total pizza order` from ps1
group by pizza_name
order by `Total pizza order` asc
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 13. Top 5 pizza by total revenue

select pizza_name ,sum(total_price) as `Total revenue`
from ps1
group by pizza_name
order by `Total revenue` desc 
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 14. Bottom 5 pizza by total revenue

select pizza_name ,sum(total_price) as `Total revenue`
from ps1
group by pizza_name
order by `Total revenue` asc
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

# Que 15. Top 5 pizza by quantity

select pizza_name,sum(quantity) as `Total qty` from ps1
group by pizza_name
order by `Total qty` desc
limit 5;

#_________________________________________________________________________________________________________________________________________________________________________

#Que 16.  % Of sales by pizza size

select pizza_size,round(sum(total_price),2) as total_revenue,
round(sum(total_price)*100/(select sum(total_price) from ps1),2) as `Percentage of pizza size` from ps1
group by pizza_size;

#_________________________________________________________________________________________________________________________________________________________________________





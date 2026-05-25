create database zepto;
use zepto;
select * from zepto;

-- different product categories
select distinct category
from zepto
order by category;

-- products in stock vs out of stock

select outofstock,count(*)
from zepto
group by outofstock;

-- product names present multiple times

select name,count(*) AS 'Number of *'
from zepto
group by name
Having count(*)>1
order by count(*) DESC;

-- data cleaning
-- products with price = 1

-- convert paisa into zero

update zepto
set mrp= mrp/100.0,
discountedSellingprice= discountedSellingprice/100.0;

select mrp,discountedSellingprice FROM Zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp,discountpercent
from zepto
order by discountpercent DESC
LIMIT 15; 

-- Q2.What are the Products with High MRP but Out of Stock

select distinct name,mrp
from zepto
where outOfStock=  True and mrp >300
order by mrp DESC;

-- Q3.Calculate Estimated Revenue for each category

select category,
SUM(discountedSellingprice* availableQuantity) AS total_revenue
from zepto
group by category 
order by total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

select Distinct name, mrp, discountpercent
from zepto
where mrp> 500 AND discountpercent <10
order by mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category,
Round(AVG(discountpercent),2) AS avg_discount
from zepto
group by category
order by avg_discount DESC
LIMIT 5;
-- Q6. Find the price per gram for products above 100g and sort by best value.

select Distinct name,weightinGms,discountedSellingprice,
ROUND(discountedSellingprice/weightinGms,2) AS price_per_gram
from zepto
where weightinGms> 100
order by price_per_gram;

--  Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT
    name,
    weightinGms,
    CASE
        WHEN weightinGms < 1000 THEN 'LOW'
        WHEN weightinGms < 5000 THEN 'Medium'
        ELSE 'BULK'
    END AS weight_category
FROM
    zepto;
    
--  Q8.What is the Total Inventory Weight Per Category  
 Select Category,
 SUM(weightinGms* availableQuantity) AS total_weight
 from zepto
group by category
order by total_weight;









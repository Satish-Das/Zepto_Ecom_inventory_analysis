drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5),
avilibleQuantity INTEGER,
discountSallingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
)

-- Data Exploration

-- Count of rows
SELECT COUNT(*) FROM zepto

SELECT * FROM zepto;

SELECT * FROM zepto
LIMIT 10;

-- null values
SELECT * FROM zepto
WHERE name is NULL 
OR category is NULL 
OR mrp is NULL
OR discountPercent is NULL
OR avilibleQuantity is NULL
OR discountSallingPrice is NULL
OR weightInGms is NULL
OR outOfStock is NULL
OR quantity is NULL;

-- different Category
SELECT DISTINCT category 
FROM zepto 
ORDER BY category;

-- Product in Stock vs out Of Stock
SELECT outOfStock, COUNT(sku_id) as inStock FROM zepto
GROUP BY outOfStock;

-- product names present multiple times
SELECT name, COUNT(sku_id) as "Number of SKUs"
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) > 1
ORDER BY COUNT(sku_id) DESC;

-- DATA CLEANING

-- product with price = 0
SELECT * FROM zepto 
WHERE mrp = 0 OR discountSallingPrice = 0;


DELETE FROM zepto
WHERE mrp = 0;

-- convert paise to rupees
UPDATE zepto
SET mrp = mrp/100.0, discountSallingPrice = discountSallingPrice/100.0;

SELECT mrp, discountSallingPrice FROM zepto;

-- Business Insight Queries

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock
SELECT DISTINCT name, mrp FROM zepto
WHERE outOfStock = TRUE AND mrp > 300
ORDER BY mrp DESC;

--Q3. Calculate Estimated Revenue for each category.
SELECT category,
SUM(discountSallingPrice * avilibleQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than 500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category, ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category 
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountSallingPrice,
ROUND(discountSallingPrice/weightInGms,2) AS price_per_grm
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_grm;

--Q7. Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'LOW'
	WHEN weightInGms < 5000 THEN 'MEDIUM'
	ELSE 'BULK'
	END AS weight_category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category
SELECT category, SUM(weightInGms * avilibleQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
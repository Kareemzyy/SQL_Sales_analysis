---FIND TOTAL CUSTOMERS BY COUNTRY

SELECT 
	country,
	COUNT(customer_key) total_customers
FROM gold.dim_customers
GROUP BY country 
ORDER BY total_customers DESC

-------FIND TOTAL CUSTOMERS BY GENDER 

SELECT 
	
	gender,
	COUNT(customer_key) total_customers
FROM gold.dim_customers
GROUP BY gender 
ORDER BY total_customers DESC

----TOTAL PRODUCTS BY CATEGORY 

SELECT 
	COUNT(product_key) total_categories,
	category
FROM gold.dim_products
GROUP BY category 
ORDER BY total_categories DESC
	
----WHAT IS THE AVG COST IN EACH CATEGORY?

SELECT 
	category,
	AVG(cost) average_cost
FROM gold.dim_products
GROUP BY category 
ORDER BY average_cost DESC

---- WHAT IS THE TOTAL REVENUE GENERATED FOR EACH CATEGORY?

SELECT 
	p.category,
	sum(sales_amount) total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key=p.product_key
GROUP BY category
ORDER BY total_sales DESC

---- WHAT IS THE TOTAL REVENUE GENERATED FOR EACH CUSTOMER 


SELECT 
	c.first_name,
	c.last_name,
	sum(sales_amount) total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key=c.customer_key
GROUP BY c.first_name, c.last_name
ORDER BY total_sales DESC

--- WHAT IS THE DISTRIBUTION OF SOLD ITEMS I COUNTRITES ?

SELECT 
	c.country,
	sum(sales_amount) total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key=c.customer_key
GROUP BY c.country
ORDER BY total_sales DESC


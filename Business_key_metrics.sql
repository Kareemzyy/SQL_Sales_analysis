--- GENERATE A REPORT THAT SHOWS KEY METRICS FOR THE BUSINESS 

SELECT 'total sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'total qauntity' AS measure_name, SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL 
SELECT 'avg price' AS measure_name, AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL 
SELECT 'total nr. of orders' AS measure_name, COUNT(DISTINCT(order_number)) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'total nr. of products' AS measure_name, COUNT(product_name) AS measure_value FROM gold.dim_products
UNION ALL 
SELECT 'total nr. of customers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers



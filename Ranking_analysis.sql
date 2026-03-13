
----- which 5 producst generats highest revenue?

SELECT TOP 5
	p.product_name,
	sum(sales_amount) total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key=p.product_key
GROUP BY product_name
ORDER BY total_sales DESC

------- Which 5 products generates lowest revenue?


SELECT TOP 5
	p.product_name,
	sum(sales_amount) total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key=p.product_key
GROUP BY product_name
ORDER BY total_sales ASC

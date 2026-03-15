use retail_store;
SELECT * FROM retail_store.retail_sales;
SELECT 
SUM(retail_sales + warehouse_sales) AS total_sales
FROM retail_sales;
SELECT 
month,
SUM(retail_sales + warehouse_sales) AS total_sales
FROM retail_sales
GROUP BY month
ORDER BY month;
SELECT 
supplier,
SUM(retail_sales + warehouse_sales) AS total_sales
FROM retail_sales
GROUP BY supplier
ORDER BY total_sales DESC
LIMIT 10;
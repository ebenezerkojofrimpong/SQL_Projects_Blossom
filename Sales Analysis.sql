SELECT * FROM digital_africa.data;

-- Top 10 Countries by Total Sales --
SELECT country, ROUND(SUM(Sales), 2) AS total_sales
FROM data
GROUP BY country
ORDER BY total_sales DESC
LIMIT 10;


-- Total Sales per Market --
SELECT Market, ROUND(SUM(Sales), 2) AS total_sales
FROM data
GROUP BY market
ORDER BY total_sales DESC;



-- Average Shipping Cost Across Regions --
SELECT region, ROUND(AVG(`Shipping Cost`), 2) AS avg_shipping_cost
FROM data
GROUP BY region
ORDER BY avg_shipping_cost DESC;



-- Total Sales by Ship Mode --
SELECT `Ship Mode`, ROUND(SUM(sales), 2) AS total_sales
FROM data
GROUP BY `Ship Mode`
ORDER BY total_sales DESC; 


-- Average profit by category --
SELECT Category, ROUND(AVG(profit), 2) AS avg_profit
FROM data
GROUP BY category
ORDER BY avg_profit DESC;


-- top 5 sub-categories by average sales --
SELECT `Sub-Category`, ROUND(AVG(sales), 2) AS avg_sales
FROM data
GROUP BY `Sub-Category`
ORDER BY avg_sales DESC
LIMIT 5;


-- total sales per segment --
SELECT Segment, ROUND(SUM(sales), 2) AS total_sales
FROM data
GROUP BY segment
ORDER BY total_sales DESC;





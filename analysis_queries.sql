-- Sales & Revenue Analysis: starter SQL queries
-- Adjust table/column names for your database dialect.

-- 1. KPI summary
SELECT
  SUM(Revenue) AS total_revenue,
  SUM(Profit) AS total_profit,
  SUM(Quantity) AS units_sold,
  COUNT(DISTINCT Order_ID) AS total_orders,
  100.0 * SUM(Profit) / NULLIF(SUM(Revenue), 0) AS profit_margin_pct
FROM sales;

-- 2. Monthly revenue trend
SELECT
  DATE_TRUNC('month', CAST(Order_Date AS DATE)) AS month,
  SUM(Revenue) AS revenue,
  SUM(Profit) AS profit
FROM sales
GROUP BY 1
ORDER BY 1;

-- 3. Top products
SELECT Product, SUM(Revenue) AS revenue, SUM(Profit) AS profit,
       SUM(Quantity) AS units_sold
FROM sales
GROUP BY Product
ORDER BY revenue DESC
LIMIT 10;

-- 4. Revenue by region and category
SELECT Region, Category, SUM(Revenue) AS revenue
FROM sales
GROUP BY Region, Category
ORDER BY revenue DESC;

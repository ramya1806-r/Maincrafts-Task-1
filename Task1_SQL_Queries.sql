-- 1. Total Sales by Region
SELECT c12 AS Region,
       SUM(CAST(c17 AS REAL)) AS Total_Sales
FROM Task1xlsxSheet1
GROUP BY c12
ORDER BY Total_Sales DESC;

-- 2. Top 5 Profitable Products
SELECT c16 AS Product_Name,
       SUM(CAST(c19 AS REAL)) AS Total_Profit
FROM Task1xlsxSheet1
GROUP BY c16
ORDER BY Total_Profit DESC
LIMIT 5;

-- 3. Monthly Sales Trend
SELECT
    substr(c3, -4) || '-' ||
    printf('%02d', CAST(substr(c3, 1, instr(c3, '/') - 1) AS INTEGER))
    AS Sales_Month,
    SUM(CAST(c17 AS REAL)) AS Total_Sales
FROM Task1xlsxSheet1
GROUP BY Sales_Month
ORDER BY Sales_Month;
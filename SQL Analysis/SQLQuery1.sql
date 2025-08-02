select * From blinkit_data

-- Total Sales

SELECT CAST(SUM(Total_Sales)/1000000 AS Decimal(10,2)) As Total_Sales_Millions 
From blinkit_data
WHERE Outlet_Establishment_Year = 2022

--Average of Total Sales

SELECT CAST(AVG(Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales from blinkit_data
WHERE Outlet_Establishment_Year = 2022

-- No of Items

SELECT COUNT(*) AS No_of_Items FROM blinkit_data
WHERE Outlet_Establishment_Year = 2022

-- Average Rating
SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating From blinkit_data
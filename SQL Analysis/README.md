
---

# 📊 Blinkit Sales Analysis Using SQL

## 📘 Overview

This project focuses on analyzing the sales performance and operational metrics of **Blinkit**, an online grocery delivery platform, by leveraging **SQL** for data exploration, aggregation, and reporting. The analysis provides valuable insights into sales trends, outlet performance, and product visibility across various store types and locations.

## 🎯 Objectives

* To **explore and analyze sales data** from different outlet types and locations.
* To **compare sales performance** based on outlet size, location tier, and product categories (e.g., Low Fat vs. Regular).
* To **identify key trends and patterns** that can inform business decisions, marketing strategies, and inventory management.

## 🛠️ Tools & Technologies

* **SQL (Structured Query Language):** Used for querying, aggregating, and transforming the dataset.
* **RDBMS (e.g., MySQL, PostgreSQL, SQL Server):** The backend database system to store and process data.
* **Data Visualization Tools (Optional):** Tools like Tableau, Power BI, or Excel can complement SQL for visual exploration.

## 🧩 Key Analysis Areas

The project includes several dimensions of analysis:

✅ **Outlet Type Analysis**

* Evaluating total and average sales across different outlet types (Supermarket Type1, Type2, Type3, Grocery Store).
* Assessing the number of items sold, average ratings, and item visibility.

✅ **Location-Based Sales Analysis**

* Comparing sales performance across location tiers (Tier 1, Tier 2, Tier 3).
* Understanding how geography impacts sales volume.

✅ **Outlet Size Analysis**

* Analyzing total sales and their percentage contributions by outlet size (Small, Medium, High).
* Helping to prioritize investments in store expansions or optimizations.

✅ **Product Category Analysis**

* Measuring sales contributions from product categories such as Low Fat and Regular items across locations.

## 💡 Insights & Use Cases

This analysis can help Blinkit to:

* **Identify high-performing outlets** and replicate their success factors.
* **Optimize inventory and stocking strategies** for different store sizes.
* **Personalize marketing efforts** based on regional preferences.
* **Enhance operational efficiency** by understanding demand distribution.

## 📝 Sample Queries

The analysis uses a variety of SQL techniques, including:

* **GROUP BY and aggregation functions** (SUM, AVG, COUNT).
* **Filtering with WHERE clauses** for targeted insights.
* **ORDER BY** to rank performance metrics.
* **JOINS** (if combining multiple tables).

## 📈 Conclusion

By harnessing SQL’s power, Blinkit can transform raw transactional data into actionable intelligence. This enables data-driven decision-making, improves customer satisfaction, and drives sustainable growth.

---

````markdown
# 📊 Blinkit Data Analysis

## 🔍 Data Preview

```sql
SELECT * FROM blinkit_data
````

---

## 🧹 Data Cleaning

```sql
UPDATE blinkit_data
SET Item_Fat_Content = 
    CASE 
        WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
        WHEN Item_Fat_Content = 'reg' THEN 'Regular'
        ELSE Item_Fat_Content
    END;
| ID | Item\_Fat\_Content |
| -- | ------------------ |
| 1  | Low Fat            |
| 2  | Regular            |


```


Check if cleaning worked:

```sql
SELECT DISTINCT Item_Fat_Content FROM blinkit_data;
```

---

## 📌 A. KPI’s

### 1. Total Sales

```sql
SELECT CAST(SUM(Total_Sales) / 1000000.0 AS DECIMAL(10,2)) AS Total_Sales_Million
FROM blinkit_data;

| Total\_Sales\_Million |
| --------------------- |
| 1.20                  |

```

### 2. Average Sales

```sql
SELECT CAST(AVG(Total_Sales) AS INT) AS Avg_Sales
FROM blinkit_data;

| Avg\_Sales |
| ---------- |
| 140        |

```

### 3. No of Items

```sql
SELECT COUNT(*) AS No_of_Orders
FROM blinkit_data;

| No\_of\_Orders |
| -------------- |
| 8523           |

```

### 4. Average Rating

```sql
SELECT CAST(AVG(Rating) AS DECIMAL(10,1)) AS Avg_Rating
FROM blinkit_data;

| Avg\_Rating |
| ----------- |
| 4.0         |

```

---

## 📌 B. Total Sales by Fat Content

```sql
SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Fat_Content;

| Item\_Fat\_Content | Total\_Sales |
| ------------------ | ------------ |
| Low Fat            | 776319.68    |
| Regular            | 425361.80    |

```

## 📌 C. Total Sales by Item Type

```sql
SELECT Item_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

| Item\_Type            | Total\_Sales |
| --------------------- | ------------ |
| Fruits and Vegetables | 178124.08    |
| Snack Foods           | 175433.92    |
| Household             | 135976.53    |
| Frozen Foods          | 118558.88    |
| Dairy                 | 101276.46    |
| Canned                | 90706.73     |
| Baking Goods          | 81894.74     |
| Health and Hygiene    | 68025.84     |
| Meat                  | 59449.86     |
| Soft Drinks           | 58514.16     |
| Breads                | 35379.12     |
| Hard Drinks           | 29334.68     |
| Others                | 22451.89     |
| Starchy Foods         | 21880.03     |
| Breakfast             | 15596.70     |
| Seafood               | 9077.87      |

```

## 📌 D. Fat Content by Outlet for Total Sales

```sql
SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM blinkit_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    SUM(Total_Sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;

| Outlet\_Location\_Type | Low\_Fat  | Regular   |
| ---------------------- | --------- | --------- |
| Tier 1                 | 215047.91 | 121349.90 |
| Tier 2                 | 254464.77 | 138685.87 |
| Tier 3                 | 306806.99 | 165326.03 |

```

> 💡 **Explanation:** This query uses PIVOT to display total sales for each outlet and fat content.

---

## 📌 E. Total Sales by Outlet Establishment

```sql
SELECT Outlet_Establishment_Year, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

| Outlet\_Establishment\_Year | Total\_Sales |
| --------------------------- | ------------ |
| 1998                        | 204522.26    |
| 2000                        | 131809.02    |
| 2010                        | 132113.37    |
| 2011                        | 78131.56     |
| 2012                        | 130476.86    |
| 2015                        | 130942.78    |
| 2017                        | 133103.91    |
| 2020                        | 129103.96    |
| 2022                        | 131477.77    |

```

## 📌 F. Percentage of Sales by Outlet Size

```sql
SELECT 
    Outlet_Size, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST((SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

| Outlet\_Size | Total\_Sales | Sales\_Percentage |
| ------------ | ------------ | ----------------- |
| Medium       | 507895.73    | 42.27             |
| Small        | 444794.17    | 37.01             |
| High         | 248991.58    | 20.72             |


```

---

## 📌 G. Sales by Outlet Location

```sql
SELECT Outlet_Location_Type, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

| Outlet\_Location\_Type | Total\_Sales |
| ---------------------- | ------------ |
| Tier 3                 | 472133.03    |
| Tier 2                 | 393150.64    |
| Tier 1                 | 336397.81    |

```

## 📌 H. All Metrics by Outlet Type

```sql
SELECT Outlet_Type, 
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(AVG(Total_Sales) AS DECIMAL(10,0)) AS Avg_Sales,
    COUNT(*) AS No_Of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
    CAST(AVG(Item_Visibility) AS DECIMAL(10,2)) AS Item_Visibility
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

| Outlet\_Type      | Total\_Sales | Avg\_Sales | No\_Of\_Items | Avg\_Rating | Item\_Visibility |
| ----------------- | ------------ | ---------- | ------------- | ----------- | ---------------- |
| Supermarket Type1 | 787549.89    | 141        | 5577          | 3.96        | 0.06             |
| Grocery Store     | 151939.15    | 140        | 1083          | 3.99        | 0.10             |
| Supermarket Type2 | 131477.77    | 142        | 928           | 3.97        | 0.06             |
| Supermarket Type3 | 130714.67    | 140        | 935           | 3.95        | 0.06             |


```

---



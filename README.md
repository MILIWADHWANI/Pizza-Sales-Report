# Pizza Sales Report (SQL + Power BI)
---

## **Overview**  
This project involves **end-to-end data processing and visualization** of pizza sales data using **SQL and Power BI**. It follows a structured **ETL workflow**, including **database creation, data transformation, KPI calculations, and interactive visualizations** to extract actionable business insights.  

## **SQL Workflow**  
- **Database Design & Schema Creation:** Structured the dataset in **MySQL Workbench** by defining an optimized **relational schema** with appropriate data types (`INT`, `VARCHAR`, `DECIMAL`, `TEXT`).  
- **Data Extraction & Aggregation:** Utilized **SQL queries** to compute **KPIs** such as **Total Revenue, Average Order Value, and Total Orders** using `SUM()`, `COUNT(DISTINCT)`, and `CAST()`.  
- **Trend & Sales Analysis:**  
  - **Daily & Monthly Sales Trends** using `DAYNAME(order_date)`, `MONTHNAME(order_date)`, and `GROUP BY`.  
  - **Category-wise and Size-wise Sales Contribution** with **percentage calculations** using **subqueries** and **aggregations** (`SUM(total_price) * 100 / (SELECT SUM(total_price))`).  
  - **Top & Bottom Performers** identified using **ranking logic** with `ORDER BY DESC` and `LIMIT`.  

## **Power BI Workflow**  
- **Power Query (ETL & Data Cleaning):**  
  - Performed **data transformation** by renaming columns, standardizing pizza size labels (`L → Large, S → Small`), and handling missing values.  
  - Applied **custom column transformations** to create new features like **Order Day & Order Month** using `FORMAT([Order Date], "dddd")` in Power Query Editor.  
- **DAX Measures for Business Insights:**  
  - **KPI Calculations:** Created **calculated measures** using `SUMX()`, `DIVIDE()`, and `CALCULATE()` for metrics like **Total Revenue, Average Order Value, and Average Pizza per Order**.  
  - **Time Intelligence Functions:** Used `DATEADD()` and `PREVIOUSMONTH()` to compare sales trends over time.  
  - **Conditional Formatting & Dynamic Aggregation:** Implemented **dynamic filters** to switch between different sales categories using **DAX slicers**.  
- **Interactive Data Visualizations:**  
  - **Trend Charts (Daily & Monthly Sales)** sorted dynamically using **DAX-generated numeric ordering columns**.  
  - **Category-wise & Size-wise Sales Distribution** with **percentage calculations and data labels**.  
  - **Top & Bottom 5 Performers Analysis** visualized using **bar charts and KPI cards with conditional formatting**.  

## **Key Business Insights & Visualizations**  
- **KPIs:** Total Revenue, Total Orders, Average Order Value, Total Pizza Sold, Average Pizza Per Order.  
- **Sales Trends:** Daily & Monthly Sales Analysis with dynamic sorting.  
- **Category & Size Sales Breakdown:** Percentage contribution analysis.  
- **Best & Worst-Selling Pizzas:** Ranked based on Revenue, Quantity, and Order Volume.  

## **Technologies Used**  
- **SQL (MySQL Workbench):** Data modeling, **query optimization**, and **aggregation functions** for business insights.  
- **Power BI:** **Power Query** for data transformation, **DAX for advanced calculations**, and **interactive dashboards**.  

---


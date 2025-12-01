
# 🍕 Pizza Sales Trend Analysis 

Analyzing pizza sales data to derive business insights on revenue, product performance, and customer behavior using **SQL**, **Python**, and **Power BI**.

---
  
## 📌 Table of Contents
  - [Overview & Objective](#overview--objective)
  - [Business Problem & Use Case](#business-problem--use-case)
  - [Dataset Description](#dataset-description)
  - [Tools & Technologies](#tools--technologies)
  - [Project Structure](#project-structure)
  - [Data Cleaning & Preparation](#data-cleaning--preparation)
  - [EDA, SQL & Python Workflows](#eda-sql--python-workflows)
  - [Dashboard & Visualizations](#dashboard--visualizations)
  - [Key Findings & Insights](#key-findings--insights)
  - [Business Recommendations](#business-recommendations)
  - [How to Run This Project](#how-to-run-this-project)
  - [Author](#author)
                          
  ---
                            
## Overview & Objective
                            
  This project transforms raw pizza sales data into actionable business intelligence using a complete analytics workflow — **data cleaning**, **SQL/Python analysis**, and **Power BI visualization**.
                          
  ### **Objectives**
  - Identify top and bottom performing pizzas (revenue, quantity sold, number of orders).
  - Analyze customer buying patterns across **days**, **months**, and **time periods**.
  - Understand product performance across **pizza category** and **size**.
  - Provide data-driven **business recommendations** to optimize menu, pricing, and operations.
                          
---
                            
## Business Problem & Use Case
                            
Pizza stores often lack clear visibility on:
  - Which pizzas generate the most revenue,
  - Which slow-moving pizzas block inventory,
  - When customer demand peaks,
  - What patterns drive customer purchasing behavior.
                          
This project delivers insights empowering the business to:
 - Optimize menu items,
 - Reduce waste,
 - Increase profitability,
 - Improve staffing and inventory planning.
                          
---
                            
## Dataset Description
                            
The dataset includes:
 - Order details (date, time, quantity, price)
 - Pizza information (category, size, type)
 - Revenue metrics
 - Aggregated data generated through SQL & Python
                          
The dataset was cleaned, transformed, and analyzed prior to dashboard creation.
                          
---
                            
## Tools & Technologies
                            
 - **SQL** — Data extraction, cleaning, summarization, time-series aggregations  
 - **Python** (pandas, matplotlib, seaborn) — Data cleaning, EDA, validation  
 - **Jupyter Notebook** — Analysis documentation  
 - **Power BI** — Dashboard visualization  
 - **GitHub** — Version control & project deployment
                          
---
                            
## Project Structure
  
    pizza-sales-analysis/
    │
  ├── README.md
  ├── data/
    │ ├── pizza_sales_raw.csv
  │ └── pizza_sales_cleaned.csv
  │
  ├── notebooks/
    │ ├── cleaning.ipynb
  │ └── analysis.ipynb
  │
  ├── sql/
    │ └── sales_summary.sql
  │
  ├── dashboard/
    │ └── pizza_sales_dashboard.pbix
  │
  ├── images/
    │ └── dashboard_screenshot.png
  └── docs/
    └── business_insights.md


---
  
## Data Cleaning & Preparation
  
  - Removed null/duplicate entries  
  - Corrected inconsistent date/time formats  
  - Validated numeric fields (price, quantity)  
  - Created new calculated fields:  
  - **Revenue per order**  
  - **Pizza size category**  
  - **Day of week / Month**  
  - Created summary tables using SQL & Python  
  - Exported final cleaned dataset to Power BI

---
  
## EDA, SQL & Python Workflows
  
### **Python Tasks**
  - Data profiling  
  - Missing value identification  
  - Outlier detection  
  - Exploratory analysis (categories, sizes, time trends)

### **SQL Tasks**
  - Revenue aggregation  
  - Top/Bottom performer identification  
  - Monthly & daily trend calculations  
  - Pizza category & size analysis  
  - Summary tables for Power BI import

---
  
## Dashboard & Visualizations
  
  The interactive dashboard includes:
  
### **📌 KPIs**
  - Total Revenue  
  - Total Orders  
  - Total Pizzas Sold  
  - Average Order Value  
  - Average Pizzas per Order  

### **📌 Visuals**
  - **Top 5 & Bottom 5 pizzas** by:
  - Revenue
  - Quantity sold
  - Number of orders
  - **Sales by Category** (Classic, Veggie, Supreme, etc.)
  - **Sales by Size** (S, M, L, XL)
  - **Monthly Sales Trend**
  - **Day of Week Trend**
  - **Hourly Demand Pattern**
  
  ---
  
## Key Findings & Insights
  
  - **Large pizzas contribute highest revenue** across all categories.  
  - **Classic pizzas** have the strongest and most consistent demand.  
  - **Bottom-performing pizzas** contribute minimal revenue → candidates for removal or recipe improvement.  
  - **Peak demand** is seen on **weekends**, especially Friday & Saturday.  
  - Monthly trend shows **seasonality**, useful for forecasting.

---
  
  ## Business Recommendations
  
  ### **1️⃣ Strengthen Best-Selling Pizzas**
  - Promote via combos, premium add-ons, and upsell strategies.

### **2️⃣ Re-evaluate Low-Performing Pizzas**
- Consider recipe changes, limited-time promotions, or discontinuation.

### **3️⃣ Inventory & Staff Optimization**
- Increase inventory and staffing on known high-demand days.

### **4️⃣ Introduce Size-Based Offers**
- Since large pizzas dominate revenue, offer:
  - Upsell to Large  
- “Buy 1 Large, Get 20% Off on Next Order” promotions

### **5️⃣ Seasonal Offers**
- Launch targeted discounts in months with lower demand.

---
  
## How to Run This Project
  
  1. Clone the repository:
  
  ```bash
git clone https://github.com/<your-username>/pizza-sales-analysis.git


 2. Open and execute SQL scripts from the /sql folder.
 
 3. Run Python notebooks from /notebooks for EDA & cleaning.
 
 4. Open Power BI → Load cleaned dataset → Open pizza_sales_dashboard.pbix.
 
 5. Explore the interactive visuals.
 
 Author
 
 Sakshi
 Aspiring Data Analyst
 
 📧 Email: awasthi.sakshi000@gmail.com
 
 🔗 LinkedIn: https://www.linkedin.com/in/sakshiawasthi000/
 
 🔗 GitHub: https://github.com/awasthisakshi000-code
                            
                        
📦 BigQuery E-Commerce Analysis Project

Brazilian E-Commerce Public Dataset | 17 SQL Case Study Questions

This project contains a complete analysis of the Brazilian e-commerce dataset using Google BigQuery.
It answers 17 real business questions related to:

  Customer behavior
   
  Order trends
  
  Logistics & delivery performance
  
  Payment type patterns
  
  State-wise order distribution
  
  Price & freight comparisons

All SQL queries, insights, and documentation are included.

📁 Project Structure:
📦 BigQuery-Ecommerce-Analysis-Project
 ┣ 📂 sql_queries/
 ┃ ┣ 01_data_types.sql
 ┃ ┣ 02_time_range.sql
 ┃ ┣ 03_city_state_count.sql
 ┃ ┣ ...
 ┃ ┗ 17_installments_orders.sql
 ┣ 📄 target_doc_project.pdf
 ┗ 📄 README.md

🛠 Tools & Technologies:

Google BigQuery (Standard SQL)
SQL Analytical Functions
Window Functions
Date & Time Functions
Google Cloud Platform
E-Commerce Data Analysis

📊 Key Insights (Summary)

✔ Orders increased year-over-year
✔ Afternoon & night have highest order placements
✔ Strong monthly seasonality (Jul–Aug peak)
✔ High freight cost in certain states
✔ Delivery speed varies widely across states
✔ Payment methods show monthly preference patterns
✔ Some states deliver faster than estimated consistently

Full insights are available in target_doc_project.pdf

📑 Queries Included

This project includes SQL solutions for 17 functional analytics tasks:

1.  Data types of the customers table
2.  Time range of orders
3.  Count of unique cities & states
4.  Year-wise trend of orders
5.  Monthly seasonality
6.  Order distribution by time of day
7.  Month-on-month orders per state
8.  Customer distribution across states
9.  Year-over-year cost increase (2017 → 2018)
10.  State-wise total & average price
11.  State-wise freight analysis
12.  Delivery time vs estimated time
13.  Top 5 highest & lowest freight states
14.  Top 5 states with highest & lowest delivery time
15.  States with fastest delivery against estimate
16.  Month-wise orders by payment type
17.  Orders by payment installments

Each query is available separately inside the sql_queries folder.

🚀 How to Run the Queries

1.  Open Google BigQuery Console
2.  Select any dataset (or create a new one)
3.  Upload the Brazilian E-commerce dataset (if needed)
4.  Open each .sql file from /sql_queries/
5.  Replace the table path:

  targetSQL.orders
  targetSQL.customers


with your own dataset name

Run queries and explore results

📚 Dataset Reference:
Brazilian E-Commerce Public Dataset (Olist)

👤 Author

Murali Krishna S
Data Analyst | SQL | BigQuery | Python | BI Tools
Feel free to connect or share feedback.

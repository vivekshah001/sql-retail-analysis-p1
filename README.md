# 🛒 Retail Sales Analysis SQL Project

## 📌 Project Overview

This project is a **Retail Sales Analysis** based on a fictional dataset stored in a SQL database. The primary objective is to **explore**, **clean**, and **analyze** the data using SQL queries to extract useful business insights, such as customer behavior, product trends, and category-wise sales performance.

---

## 🧰 Tools Used

- **Database**: MySQL
- **Query Language**: SQL
- **Dataset**: `retail` table containing sales transaction data

---

## 🧱 Database Schema

**Table Name**: `retail`

| Column Name      | Data Type     | Description                            |
|------------------|---------------|----------------------------------------|
| transactions_id  | INT           | Primary Key, Unique transaction ID     |
| sale_date        | DATE          | Date of the transaction                |
| sale_time        | TIME          | Time of the transaction                |
| customer_id      | INT           | ID of the customer                     |
| gender           | VARCHAR(10)   | Gender of the customer                 |
| age              | INT           | Age of the customer                    |
| category         | VARCHAR(35)   | Product category                       |
| quantity         | INT           | Quantity sold                          |
| price_per_unit   | FLOAT         | Price per unit                         |
| cogs             | FLOAT         | Cost of goods sold                     |
| total_sale       | FLOAT         | Total sale value                       |

---

## 🔍 Data Exploration & Cleaning

1. ✅ **Total number of records**  
   `SELECT COUNT(*) FROM RETAIL;`

2. ✅ **Unique customers**  
   `SELECT COUNT(DISTINCT customer_id) FROM RETAIL;`

3. ✅ **Unique product categories**  
   `SELECT DISTINCT category FROM RETAIL;`

4. ✅ **Check and remove null values**  
   ```sql
   SELECT * FROM RETAIL
   WHERE sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL 
   OR gender IS NULL OR age IS NULL OR category IS NULL 
   OR quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

   DELETE FROM RETAIL
   WHERE sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL 
   OR gender IS NULL OR age IS NULL OR category IS NULL 
   OR quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
📊 Business Questions Answered
📅 All sales made on 2022-11-05

sql
Copy
Edit
SELECT * FROM RETAIL 
WHERE sale_date = '2022-11-05';
👕 Clothing category sales with quantity > 4 in Nov-2022

sql
Copy
Edit
SELECT * FROM retail
WHERE category = 'Clothing'
  AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
  AND quantity >= 4;
📈 Total sales and number of orders per category

sql
Copy
Edit
SELECT category,
       SUM(total_sale) AS net_sale,
       COUNT(*) AS total_orders
FROM RETAIL
GROUP BY category;
✅ Conclusion
This SQL project helped in understanding how to:

Perform basic exploration of a dataset using SQL

Clean dirty records by checking nulls

Analyze sales trends and customer behavior

Answer real business questions from transactional data

It’s a great example of using SQL for data-driven decision making.

🙋‍♂️ Author
Vivek Sah
SQL Enthusiast | Exploring Data World

######################   Retail Sales Analysis SQL Project   ##########################

-- create databases 
create database da;

-- create table 
CREATE TABLE retail
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT
);


############# Data Exploration & Cleaning  #############

    --CHECK  the total number of records in the dataset
SELECT COUNT(*) FROM RETAIL ;

     --Find out how many unique customers are in the dataset 
SELECT COUNT( DISTINCT customer_id ) FROM RETAIL ; 

--Identify all unique product categories in the dataset
SELECT DISTINCT CATEGORY FROM RETAIL ;

-- Check for any null values in the dataset and delete records with missing data
SELECT * FROM RETAIL
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

DELETE FROM RETAIL
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;
    
    
    ############### DATA ANALYSIS AND FINDING ANSWER TO SPECIFIC BUSSINESS QUESTION #########################
    
    --Write a SQL query to retrieve all columns for sales made on 2022-11-05
    
				SELECT * FROM
                RETAIL 
                WHERE SALE_DATE='2020-11-05'
                ;
    
--Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
SELECT 
  *
FROM retail
WHERE 
    category = 'Clothing'
    AND 
    TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
    AND
    quantity >= 4 ;
    
--Write a SQL query to calculate the total sales (total_sale) for each category
SELECT 
    category,
    SUM(total_sale) as net_sale,
    COUNT(*) as total_orders
FROM RETAIL
GROUP BY CATEGORY ;





################################## END OF PROJECT #########################################
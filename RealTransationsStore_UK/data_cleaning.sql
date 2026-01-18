Use realtransitionsstore_uk;

-- First checking process to start cleaning the data

 -- Check if there are any zero or negative unity price
SELECT * FROM stg_sales_ecommerce WHERE UnitPrice <= 0 LIMIT 10;

-- Check if there are any negative quantities (means returns)
SELECT * FROM stg_sales_ecommerce WHERE Quantity <= 0 LIMIT 10;

-- Check if CustomerID has blank spaces
SELECT COUNT(*) FROM stg_sales_ecommerce WHERE CustomerID = '';

CREATE OR REPLACE VIEW vw_sales_clean AS
SELECT 
    InvoiceNo,
    Description,
    -- 1. Change TEXT to INT
    CAST(Quantity AS SIGNED) as quantity,
  
    -- 2.Change TEXT to REAL DATA FORMAT 
    -- CVS format is Month/Day/Year Hour:Minute
    STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i') AS sales_date,
    
    -- 3. Change TEXT to DECIMAL
    CAST(UnitPrice AS DECIMAL(10,2)) AS unity_price,
    
    -- 4.Create a collum - quantity * unit price
    (CAST(Quantity AS SIGNED) * CAST(UnitPrice AS DECIMAL(10,2))) AS total_sales,
    
    -- 5. If Client ID is empty, change to NULL
    NULLIF(CustomerID, '') AS Client_ID
    
FROM stg_vendas_ecommerce
-- 6. Filter just what we need (remove trash data)
WHERE Quantity > 0 
  AND UnitPrice > 0 
  AND Description NOT LIKE 'POSTAGE%' -- Remove shipping cost (if we want to focus only in products)
  AND Description <> '';

( -- Check the view 
  SELECT * FROM vw_sales_clean LIMIT 100;) -- Test

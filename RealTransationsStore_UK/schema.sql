--The data file could be imported via "Table Data Import Wizard" too;

CREATE TABLE IF NOT EXISTS stg_sales_ecommerce (
    InvoiceNo TEXT,
    StockCode TEXT,
    Description TEXT,
    Quantity TEXT,
    InvoiceDate TEXT,
    UnitPrice TEXT,
    CustomerID TEXT,
    Country TEXT
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/data.csv' 
INTO TABLE stg_sales_ecommerce 
CHARACTER SET latin1 -- <--- solve error 1300
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

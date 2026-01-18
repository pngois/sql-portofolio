## Vizualization and Business Inteligent 

In this stage, the focus was on transforming the data processed in SQL into an intuitive dashboard for decision-making:
-- Data Modeling: Importing the SQL-processed View to ensure performance;

-- DAX (Data Analysis Expressions): Creating custom measures for dynamic calculations, ensuring that KPIs adjust according to the applied filters;

-- User Interface (UI): Dark Mode design to reduce visual fatigue and highlight key KPIs (Revenue, Orders, and Quantity);


## DAX measures created:

Total Revenue = SUM(v_sales[total_sales]);
Total Orders = DISTINCTCOUNT(v_sales[InvoiceNo]);
Average Ticket = DIVIDE([Total Revenue], [Total Orders]);




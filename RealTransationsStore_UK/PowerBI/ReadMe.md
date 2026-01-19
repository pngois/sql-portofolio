<img width="1146" height="644" alt="image" src="https://github.com/user-attachments/assets/b7021857-a36c-4e82-970b-837753b3dae6" />


## Visualization and Business Inteligent 

In this stage, the focus was on transforming the data processed in SQL into an intuitive dashboard for decision-making:

-- Data Modeling: Importing the SQL-processed View to ensure performance;

-- DAX (Data Analysis Expressions): Creating custom measures for dynamic calculations, ensuring that KPIs adjust according to the applied filters;

-- User Interface (UI): Dark Mode design to reduce visual fatigue and highlight key KPIs (Revenue, Orders, and Quantity);


## DAX measures created:

Total Revenue = SUM(v_sales[total_sales]);

Total Orders = DISTINCTCOUNT(v_sales[InvoiceNo]);

Average Ticket = DIVIDE([Total Revenue], [Total Orders]);





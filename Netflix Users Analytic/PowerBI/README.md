<img width="957" height="539" alt="image" src="https://github.com/user-attachments/assets/272b06d8-08be-487e-b24f-0c8e0c61e1dc" />



## Business Intelligence & Insights

1. Key Performance Indicators (KPIs):
   
Total Users: Total volume of active subscribers on the platform;

Total Revenue: Dynamic calculation via DAX that assigns the correct monetary value to each plan type (Basic, Standard, Premium);

ARPU (Average Revenue Per User): Essential profitability metric;


2. Implemented Analyses:
   
Geographic Distribution: Interactive map correlating user volume by country;

Demographic Segmentation (Donut Chart): Division by age groups previously calculated in SQL, revealing that Boomers (55+) are the dominant group with 36.8% of the user base;

Revenue by Country: Ordered bar chart to quickly identify the most profitable markets (UK and Germany).


Utilizei o SQL para o pesado processamento de ETL e normalização, enquanto reservei o DAX para a lógica de negócio dinâmica. 
Esta abordagem híbrida otimiza a performance do relatório e permite uma exploração de dados interativa e granular por parte do utilizador final.

USE netflixuser;

-- Test the table to check any Null value
SELECT * FROM netflix_users 
WHERE User_ID IS NULL 
   OR Age IS NULL 
   OR Country IS NULL 
   OR Watch_Time_Hours IS NULL;
   
-- Test to check if any country is written in different ways
SELECT Country, COUNT(*) FROM netflix_users GROUP BY Country;

-- Test to check if any subscrition type is written in different ways
SELECT Subscription_Type, COUNT(*) FROM netflix_users GROUP BY Subscription_Type;

-- Create a view 
CREATE OR REPLACE VIEW vw_netflix_analytics AS 
SELECT User_ID,
Age,
CASE 
        WHEN Age < 25 THEN '18-24 (Gen Z)'        
        WHEN Age BETWEEN 25 AND 40 THEN '25-40 (Millennial)'
        WHEN Age BETWEEN 41 AND 55 THEN '41-55 (Gen X)'
        ELSE '55+ (Boomer)'
    END AS Age_Group, -- Creating Age groups for analisys  
 Last_Login,
 Country, 
 Watch_Time_Hours,
 Subscription_Type
 FROM netflix_users;
 
 -- Check the view 
  SELECT * FROM vw_netflix_analytics LIMIT 100;-- Test

-- Performance: Power BI loads a summary table of 20 or 30 rows much faster than one with thousands
-- Organization
CREATE OR REPLACE VIEW vw_resume_netflix AS
SELECT 
    Country,
    Subscription_Type,
    COUNT(User_ID) AS Total_Users,
    ROUND(AVG(Age), 0) AS AVG_Age,
    ROUND(SUM(Watch_Time_Hours), 2) AS Total_Visualization_Hours,
    ROUND(AVG(Watch_Time_Hours), 2) AS AVG_Hours_Per_User
FROM netflix_users
GROUP BY Country, Subscription_Type;


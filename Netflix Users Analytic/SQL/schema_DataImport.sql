CREATE TABLE IF NOT EXISTS netflix_users (
 User_ID INT,
 Name TEXT,
 Age INT,
 Country VARCHAR(100),
 Subscription_Type VARCHAR(50),
 Watch_Time_Hours TEXT,
 Favorite_Genre VARCHAR(50),
 Last_Login TEXT
);



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/netflix_users.csv' 
INTO TABLE netflix_users
CHARACTER SET latin1 -- <---
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Tests
SHOW Warnings;
SELECT*FROM netflix_users;







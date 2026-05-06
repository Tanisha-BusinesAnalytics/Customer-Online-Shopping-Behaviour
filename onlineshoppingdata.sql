SELECT COUNT(DISTINCT `User ID`) AS Unique_User
From shoppingdata;
SELECT DISTINCT `User ID` AS Users FROM shoppingdata;

SELECT 
CASE
WHEN LOWER(`Gender`) IN ('male', 'm') THEN 'Male'
WHEN LOWER(`Gender`) IN ('female', 'f') THEN 'Female'
ELSE 'Other'
END AS Gender_Group,
CASE
WHEN `Age Group` Between 0 AND 18 THEN '0-18'
WHEN `Age Group` Between 19 AND 30 THEN '19-30'
WHEN `Age Group` Between 31 AND 50 THEN '31-50'
ELSE '50+'
END AS Age_Group,
COUNT(*) AS Users
FROM shoppingdata
GROUP BY Gender_Group,Age_Group
order by USERS DESC;

SELECT 
`Age Group`,
`Gender`,
AVG(`Average Monthly Spend (INR)`) AS Avg_Spend,
COUNT(*) Users
From shoppingdata
GROUP BY `Age Group`,`Gender`
ORDER BY Avg_Spend DESC;


SELECT
`Preferred Shopping Website`,
`Device Used`,
`Payment Method`,	
`Purchase Frequency`,
`Return Rate (%)`,
`Most Purchased Category`,
COUNT(*) AS Users
FROM shoppingdata
GROUP BY `Preferred Shopping Website`,`Device Used`,`Payment Method`,`Purchase Frequency`,`Return Rate (%)`,`Most Purchased Category`
ORDER BY Users DESC;







 






 



SELECT TOP 10 *
FROM dbo.customer;

SELECT COUNT(*) AS Total_Customers
FROM dbo.customer;

SELECT AVG(purchase_amount) AS Average_Purchase
FROM dbo.customer;

SELECT gender,
       SUM(purchase_amount) AS Total_Revenue
FROM dbo.customer
GROUP BY gender;

SELECT category,
       SUM(purchase_amount) AS Total_Revenue
FROM dbo.customer
GROUP BY category
ORDER BY Total_Revenue DESC;

SELECT 
    discount_applied,
    COUNT(*) AS Total_Customers
FROM dbo.customer
GROUP BY discount_applied;

SELECT
    age_group,
    AVG(purchase_amount) AS Avg_Purchase
FROM dbo.customer
GROUP BY age_group
ORDER BY Avg_Purchase DESC;

SELECT
    age_group,
    SUM(purchase_amount) AS Total_Revenue
FROM dbo.customer
GROUP BY age_group
ORDER BY Total_Revenue DESC;

SELECT
    payment_method,
    COUNT(*) AS Total_Customers
FROM dbo.customer
GROUP BY payment_method
ORDER BY Total_Customers DESC;

SELECT
    discount_applied,
    AVG(purchase_amount) AS Avg_Purchase,
    SUM(purchase_amount) AS Total_Revenue
FROM dbo.customer
GROUP BY discount_applied;
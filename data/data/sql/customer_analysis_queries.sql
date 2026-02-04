-- Total spending per customer
SELECT 
    Customer_ID,
    SUM(Amount) AS Total_Spend
FROM transactions
GROUP BY Customer_ID;

-- Customer segmentation based on spending
SELECT 
    Customer_ID,
    CASE
        WHEN SUM(Amount) > 5000 THEN 'High Value'
        WHEN SUM(Amount) BETWEEN 2000 AND 5000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Customer_Segment
FROM transactions
GROUP BY Customer_ID;

-- Purchase frequency
SELECT 
    Customer_ID,
    COUNT(Transaction_ID) AS Purchase_Count
FROM transactions
GROUP BY Customer_ID;

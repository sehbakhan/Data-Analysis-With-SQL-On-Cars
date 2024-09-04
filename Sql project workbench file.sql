create database customer_purchase_data;
select * from customer_purchase_data;

select sum(PurchasePrice) as Total_Revenue 
from customer_purchase_data;


select sum(PurchasePrice) / count(distinct ProductID) as Avg_Product_value 
from customer_purchase_data;
 
 
select sum(PurchaseQuantity) as Total_Product_Sold 
from customer_purchase_data;
    
    
SELECT CustomerID, CustomerName, 
    SUM(PurchaseQuantity) AS Total_Quantity, 
    SUM(PurchasePrice) AS Total_Spent
FROM customer_purchase_data
GROUP BY CustomerID, CustomerName
ORDER BY Total_Spent DESC;
    
    
SELECT customerid, COUNT(*) AS total_purchases
FROM customer_purchase_data
GROUP BY customerid;


SELECT ProductID, SUM(PurchaseQuantity * PurchasePrice) AS total_sales
FROM customer_purchase_data
GROUP BY ProductID;
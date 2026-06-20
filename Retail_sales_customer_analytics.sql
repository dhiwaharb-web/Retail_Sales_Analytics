CREATE DATABASE retail_sales_analysis;
USE retail_sales_analysis;
SELECT * FROM cleaned_retail_data LIMIT 10;
SELECT ROUND(SUM(Revenue),2) AS Total_Revenue 
	FROM cleaned_retail_data;
    
SELECT COUNT(DISTINCT InvoiceNo) AS Total_Orders
    FROM cleaned_retail_data;
    
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
    FROM cleaned_retail_data;
    
SELECT ROUND(SUM(Revenue)/COUNT(DISTINCT InvoiceNo),2) 
   AS Average_Order_Value  FROM cleaned_retail_data;

SELECT CustomerID, ROUND(SUM(Revenue),2) AS Total_Revenue
   FROM cleaned_retail_data GROUP BY CustomerID 
   ORDER BY Total_Revenue DESC LIMIT 10;
   
SELECT Description,ROUND(SUM(Revenue),2) AS Total_Revenue
   FROM cleaned_retail_data GROUP BY Description
   ORDER BY Total_Revenue DESC LIMIT 10;

SELECT Country,ROUND(SUM(Revenue),2) AS Total_Revenue
   FROM cleaned_retail_data GROUP BY Country
   ORDER BY Total_Revenue DESC LIMIT 10;
   
SELECT MIN(InvoiceNO),MAX(InvoiceNO),COUNT(*) AS Total_Rows,
   COUNT(DISTINCT InvoiceNO) AS Total_Orders
   FROM cleaned_retail_data;
   
SELECT CustomerID,ROUND(SUM(Revenue),2) AS Customer_Revenue,
   ROUND(SUM(Revenue)*100/(SELECT SUM(Revenue) FROM cleaned_retail_data),
   2) AS Revenue_Percentage FROM cleaned_retail_data
   GROUP BY CustomerID ORDER BY Customer_Revenue DESC LIMIT 10;
   
SELECT CustomerID,ROUND(SUM(Revenue),2) AS Customer_Revenue,RANK() 
   OVER(ORDER BY SUM(Revenue) DESC) AS Revenue_Rank 
   FROM cleaned_retail_data GROUP BY CustomerID limit 10;
   



   



   





# Write your MySQL query statement below

WITH WEIGHT AS (
    SELECT 
      person_name,
      SUM(Weight) OVER(ORDER BY Turn) AS Total_Weight
    FROM Queue
)

SELECT 
    person_name
FROM WEIGHT 
WHERE Total_Weight<=1000
ORDER BY Total_Weight DESC
LIMIT 1
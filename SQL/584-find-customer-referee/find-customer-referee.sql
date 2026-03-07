# Write your MySQL query statement below


SELECT 
    name
FROM CUSTOMER
Where COALESCE(referee_id,0) <> 2
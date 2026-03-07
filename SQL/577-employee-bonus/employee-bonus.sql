# Write your MySQL query statement below

WITH BonusCTE AS (
    SELECT 
        e.name,
        b.bonus
    FROM Employee e LEFT JOIN BONUS b
    ON e.empId = b.empId
)

SELECT 
    * 
FROM BonusCTE 
WHERE bonus<1000 or bonus is NULL

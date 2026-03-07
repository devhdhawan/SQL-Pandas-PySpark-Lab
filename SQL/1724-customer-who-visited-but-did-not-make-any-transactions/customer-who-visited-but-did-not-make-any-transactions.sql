# Write your MySQL query statement below

-- JOIN VISITS AND TRANSACTIONS TABLE ON VISIT_ID 
SELECT 
    V.customer_id,
    count(v.visit_id) as count_no_trans
FROM Visits v
WHERE NOT EXISTS (
    SELECT 
        NULL
    FROM Transactions t
    WHERE 
        V.visit_id = t.visit_id
)
GROUP BY 1
    
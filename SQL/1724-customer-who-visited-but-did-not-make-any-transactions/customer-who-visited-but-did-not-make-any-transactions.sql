# Write your MySQL query statement below

-- JOIN VISITS AND TRANSACTIONS TABLE ON VISIT_ID 
SELECT 
    V.customer_id,
    count(v.visit_id) as count_no_trans
FROM Visits v LEFT JOIN Transactions t
ON V.visit_id = t.visit_id 
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
    
# Write your MySQL query statement below

WITH START AS (
    SELECT 
        *,
        DENSE_RANK() OVER(PARTITION BY machine_id ORDER BY timestamp) as RNK
    FROM Activity
    WHERE activity_type = 'start'
),

END AS (
    SELECT 
        *,
        DENSE_RANK() OVER(PARTITION BY machine_id ORDER BY timestamp) as RNK
    FROM Activity
    WHERE activity_type = 'end'
)

SELECT 
    machine_id,
    ROUND(AVG(processing_time),3) as processing_time
FROM (
    SELECT 
        s.machine_id,
        (e.timestamp-s.timestamp) as processing_time
    FROM START s JOIN END e
    on s.machine_id = e.machine_id AND
    s.RNK = e.RNK
) A GROUP BY 1



# Write your MySQL query statement below



-- Job 1: Find big area (The engine uses the Area Index)
SELECT name, population, area FROM World WHERE area >= 3000000
UNION
-- Job 2: Find big population (The engine uses the Population Index)
SELECT name, population, area FROM World WHERE population >= 25000000;
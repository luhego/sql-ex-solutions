-- Find out makers who produce only the models of the same type,
-- and the number of those models exceeds 1.
-- Deduce: maker, type

SELECT maker, MAX(type)
FROM product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1
AND COUNT(model) > 1

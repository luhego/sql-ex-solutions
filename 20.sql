-- Find the makers producing at least three distinct models of PCs.
-- Result set: maker, number of PC models.

SELECT maker, COUNT(DISTINCT model)
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(DISTINCT model) > 2
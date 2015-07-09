-- Find out the average speed of the PCs produced by maker A.

SELECT AVG(p.speed)
FROM pc p
INNER JOIN product pr ON p.model = pr.model
WHERE pr.maker = 'A'

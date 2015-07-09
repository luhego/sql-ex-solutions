-- Find the makers of the PCs that have speed not less than 450MHz. Result set: Maker.

SELECT DISTINCT pr.maker
FROM product pr
INNER JOIN pc p ON pr.model = p.model
WHERE p.speed >= 450

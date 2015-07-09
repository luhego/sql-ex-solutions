-- Find the printer makers which also produce PCs with the lowest RAM
-- and the highest-speed processor among PCs with the lowest RAM. Result set: maker.

WITH MAX_SPEED AS(
    SELECT MAX(speed) AS 'speed'
    FROM pc
    WHERE ram IN (SELECT MIN(ram) FROM pc)
)

SELECT DISTINCT p.maker
FROM pc
INNER JOIN product p ON pc.model = p.model
WHERE speed IN (SELECT speed FROM MAX_SPEED)
AND ram IN (SELECT MIN(ram) FROM pc)
INTERSECT
SELECT maker
FROM product
WHERE type = 'Printer'
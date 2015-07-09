-- Find the makers producing at least both a pc having speed not less than 750 MHz and a laptop having speed not less than 750 MHz.
-- Result set: Maker

SELECT p1.maker FROM product p1
INNER JOIN pc p2 ON p1.model = p2.model
WHERE p2.speed >= 750
INTERSECT
SELECT p.maker FROM product p
INNER JOIN laptop l ON p.model = l.model
WHERE l.speed >= 750
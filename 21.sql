-- Define the maximal price of PC produced by each of those makers which have models in PC table.
-- Result set: maker, maximal price.

SELECT p1.maker,  MAX(p2.price)
FROM product p1
INNER JOIN pc p2 ON p1.model = p2.model
GROUP BY p1.maker

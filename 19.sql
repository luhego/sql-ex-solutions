-- For each maker having models in Laptop table, find out the average screen size of the laptops produced by it.
-- Result set: maker, average screen size.

SELECT p.maker, AVG(l.screen)
FROM product p
INNER JOIN laptop l ON p.model = l.model
GROUP BY maker

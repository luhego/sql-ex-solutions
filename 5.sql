-- Find the model number, speed and hard drive capacity of the PCs having 12x CD
-- and prices less than $600 or having 24x CD and prices less than $600.

SELECT model, speed, hd
FROM pc
WHERE (cd = '12x' OR cd = '24x') AND price < 600
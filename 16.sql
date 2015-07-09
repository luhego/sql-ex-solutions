-- Find the pairs of PC models having identical speeds and RAM.
-- As a result, each resulting pair is shown only once, i.e. (i, j) but not (j, i).
-- Result set: model with higher number, model with lower number, speed, and RAM

SELECT p1.model, p2.model, p1.speed, p1.ram
FROM PC p1, PC p2
WHERE p1.speed = p2.speed AND p1.ram = p2.ram
GROUP BY p1.model, p2.model, p1.speed, p1.ram
HAVING p1.model > p2.model
-- Find the laptop models having speeds less than all PCs.
-- Result set: type, model, speed.

SELECT DISTINCT p.type, l.model, l.speed
FROM laptop l
INNER JOIN product p ON l.model = p.model
WHERE l.speed < ALL(SELECT speed FROM pc)
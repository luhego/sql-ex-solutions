-- For each value of PC speed that exceeds 600 MHz, define the average price of the PCs with identical speeds.
-- Result set: speed, average price.

SELECT speed, AVG(price)
FROM pc
WHERE speed > 600
GROUP BY speed

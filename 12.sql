-- Find out the average speed of the laptops priced over $1000.

SELECT AVG(speed)
FROM laptop
WHERE price > 1000

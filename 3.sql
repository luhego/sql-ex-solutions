-- Find the model number, RAM and screen size of the laptops with prices over $1000

SELECT l.model, l.ram, l.screen
FROM laptop l
INNER JOIN product p ON l.model = p.model
WHERE l.price > 1000

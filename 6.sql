-- Point out the maker and speed of the laptops having hard drive capacity more or equal to 10 Gb.

SELECT DISTINCT p.maker, l.speed
FROM laptop l
INNER JOIN product p ON l.model = p.model
WHERE l.hd >= 10
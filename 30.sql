-- Under the assumption that the income (inc) and expenses (out) of the money at
-- each outlet (point) are registered any number of times a day, get a result set with fields: outlet, date, expense, income.
-- Note that a single record must correspond to each outlet at each date.
-- Use Income and Outcome tables.

WITH cte_out AS (
    SELECT point, date, SUM(out) AS out
    FROM outcome
    GROUP BY point, date
) , cte_inc AS (
    SELECT point, date, SUM(inc) AS inc
    FROM income
    GROUP BY point, date
)

SELECT i.point, i.date, o.out, i.inc
FROM cte_inc i
LEFT JOIN cte_out o ON i.point = o.point AND i.date = o.date
UNION
SELECT o.point, o.date, o.out, i.inc
FROM cte_out o
LEFT JOIN cte_inc i ON o.point = i.point AND o.date = i.date
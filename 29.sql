-- Under the assumption that the income (inc) and expenses (out) of the money
-- at each outlet are written not more than once a day, get a result set with the fields: point, date, income, expense.
-- Use Income_o and Outcome_o tables

SELECT i.point, i.date, i.inc, o.out
FROM income_o i
LEFT JOIN outcome_o o ON i.point = o.point AND i.date = o.date
UNION
SELECT o.point, o.date, i.inc, o.out
FROM outcome_o o
LEFT JOIN income_o i ON o.point = i.point AND o.date = i.date
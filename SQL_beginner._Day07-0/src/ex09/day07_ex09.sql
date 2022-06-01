WITH RES AS
(
  SELECT address, 
ROUND(CAST(MAX(person.age) AS NUMERIC) - CAST(MIN(person.age) AS NUMERIC)/CAST(MAX(person.age) AS NUMERIC),2)  AS Formula,
ROUND(AVG(person.age),2) AS ROUND
from person
GROUP BY address
ORDER BY 1
 ) SELECT address, formula, round, Formula > round AS comparison from RES
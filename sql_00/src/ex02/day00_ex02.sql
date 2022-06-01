SELECT * from pizzeria
WHERE rating >= 3.5 AND rating <= 5.5
ORDER BY rating;

SELECT * from pizzeria
WHERE rating BETWEEN 3.5 AND 5.5
ORDER BY rating;
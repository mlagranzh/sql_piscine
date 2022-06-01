SELECT id, name,
	CASE
    	WHEN AGE >= 10 AND AGE <= 20
        	THEN 'interval #1'
        WHEN AGE > 20 AND AGE < 24
        	THEN 'interval #2'
		ELSE
        	'interval #3'
        END interval
FROM person
ORDER BY INTERVAL;
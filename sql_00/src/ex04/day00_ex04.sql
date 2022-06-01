SELECT CONCAT(NAME, ' (age:',age, ', gender:"', gender, '", address:"', address, '")') as concat FROM person
ORDER BY concat;
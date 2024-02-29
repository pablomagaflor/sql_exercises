SELECT DISTINCT(TO_CHAR(payment_date, 'mont'))
FROM payment;

SELECT COUNT(TO_CHAR(payment_date, 'DAY'))
FROM payment
WHERE TO_CHAR(payment_date, 'DAY') = 'MONDAY   ';


SELECT top_amount.*
FROM (
  SELECT *, DENSE_RANK() OVER (ORDER BY amount DESC) AS amount_rank
  FROM payment
) top_amount
WHERE top_amount.amount_rank <= 3;

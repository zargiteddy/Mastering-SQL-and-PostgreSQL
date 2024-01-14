SELECT rental_date,
EXTRACT(QUARTER FROM rental_date)

FROM rental;
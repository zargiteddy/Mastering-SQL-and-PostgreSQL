/* I want a list of all movies that either have the rating 'G' or 'PG'.

The movies must be longer than 120 minutes in length, and they should have the word
'Action' anywhere in the description.

Hint:
- Use the "film" table
- Use LIKE keyword, for the requirement on 'Action'
*/

SELECT title, rating, length, description
FROM film
WHERE rating IN ('G', 'PG')
AND length > 120
AND description LIKE '%Action%';
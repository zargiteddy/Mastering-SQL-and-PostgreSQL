/*
The "film" table has a "title" field containing name of movies. Some
of the movies names are pretty long. Practice writing queries using
SUBSTR function to do following:

Return string after the 10th character

Return string after the 15th character. Notice how some results are blank
because the titles do not have 15 characters (HINT: You can use the LENGTH()
function to see the length of the titles)

Return string after the 5th character, just 3 words

Return string after the 5th character, just 1 word
*/

SELECT title, LENGTH(title), SUBSTR(title, 5, 1) FROM film;

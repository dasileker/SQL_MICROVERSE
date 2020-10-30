-- importing a list of series in the sql database

SELECT id, title
FROM serie
WHERE yr = 2010;

-- selecting the series Person of Interest form that database list

SELECT yr
FROM serie
WHERE title = 'Person of Interest';

-- listing  all the saisson from the database by year

SELECT id, title, yr
FROM serie
WHERE title LIKE '%Person Of Interest%'
ORDER BY yr;



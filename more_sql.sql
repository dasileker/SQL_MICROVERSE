-- importing a list of series in the sql database

SELECT id, title
FROM serie
WHERE yr = 1962;

-- selecting the series Person of Interest form that database list

SELECT yr
FROM serie
WHERE title = 'Citizen Kane';

-- listing  all the saisson from the database by year

SELECT id, title, yr
FROM serie
WHERE title LIKE '%The A-Team%'
ORDER BY yr;

-- what id number the actor have 'Liam Neeson'

SELECT id
FROM actor
WHERE name = 'Liam Neeson';

SELECT id 
FROM sierie
WHERE title = 'The A-Team';


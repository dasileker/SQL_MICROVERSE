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


-- fetching the id of the movie 

SELECT id 
FROM sierie
WHERE title = 'The A-Team';

-- fetching the list name of actors using the idnum of the movie
SELECT name
FROM actor JOIN casting
ON actor.id = casting.actorid
WHERE movieid = 18188;

SELECT matchid, player
FROM goal
WHERE teamid = 'GER';


SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012;

SELECT player, teamid, stadium, mdate
FROM goal JOIN game
ON game.id = goal.matchid
WHERE goal.teamid = 'GER '


SELECT team1, team2, player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE goal.player LIKE 'Mario%';

SELECT player, teamid, coach, gtime
FROM goal JOIN eteam
ON goal.teamid = eteam.id
WHERE gtime <= 10;

SELECT mdate, teamname
FROM game JOIN eteam
ON game.team1 = eteam.id
WHERE coach = 'Fernando Santos';


SELECT player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE game.stadium = 'National Stadium, Warsaw';


SELECT DISTINCT player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE 'GER' IN (team1, team2) AND teamid <> 'GER';

SELECT teamname, COUNT(player)
FROM eteam JOIN goal
ON eteam.id = goal.teamid
GROUP BY teamname;


SELECT stadium, COUNT(player)
FROM game JOIN goal
ON game.id = goal.matchid
GROUP BY stadium;


SELECT matchid, mdate, COUNT(player) AS goals_scored
FROM game JOIN goal
ON game.id = goal.matchid
WHERE 'POL' IN (team1, team2)
GROUP BY matchid, mdate;

SELECT matchid, mdate, COUNT(player)
FROM game JOIN goal
ON game.id = goal.matchid
WHERE goal.teamid = 'GER'
GROUP BY matchid, mdate;
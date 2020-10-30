SELECT matchid, player
FROM goal
WHERE teamid = 'Eng';


SELECT id, stadium, team1, team2
FROM game
WHERE id = 1023;

SELECT player, teamid, stadium, mdate
FROM goal JOIN game
ON game.id = goal.matchid
WHERE goal.teamid = 'ENG '


SELECT team1, team2, player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE goal.player LIKE 'Wayne%';

SELECT player, teamid, coach, gtime
FROM goal JOIN eteam
ON goal.teamid = eteam.id
WHERE gtime <= 10;

SELECT mdate, teamname
FROM game JOIN eteam
ON game.team1 = eteam.id
WHERE coach = 'Fabio Capello';


SELECT player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE game.stadium = 'Donbass Arena';


SELECT DISTINCT player
FROM goal JOIN game
ON goal.matchid = game.id
WHERE 'ENG' IN (team1, team2) AND teamid <> 'ENG';

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
WHERE 'UKR' IN (team1, team2)
GROUP BY matchid, mdate;

SELECT matchid, mdate, COUNT(player)
FROM game JOIN goal
ON game.id = goal.matchid
WHERE goal.teamid = 'ENG'
GROUP BY matchid, mdate;
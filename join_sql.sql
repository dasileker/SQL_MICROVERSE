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

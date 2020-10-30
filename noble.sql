

SELECT yr, subject, winner
FROM nobel
WHERE yr = 2015;

SELECT winner
FROM nobel
WHERE yr = 2015 AND subject = 'Literature';

SELECT yr, subject
FROM nobel
WHERE winner = 'Svetlana Alexievich';

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

SELECT *
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 2010 AND 2015;

SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                 'Woodrow Wilson',
                 'Jimmy Carter',
                 'Barack Obama');

SELECT winner
FROM nobel
WHERE winner LIKE 'Albert %';



SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Physics' AND yr = 2013 OR
      subject = 'Chemistry' AND yr = 2013 OR
      subject = 'Physics' AND yr = 2014 OR
      subject = 'Chemistry' AND yr = 2014 or
      subject = 'Physics' AND yr = 2015 OR
      subject = 'Chemistry' AND yr = 2015;


SELECT yr, subject, winner
FROM nobel
WHERE yr = 2015 AND subject NOT IN ('Chemistry', 'Medicine');


SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Medicine' AND yr < 2000 OR
      subject = 'Literature' AND yr >= 2015;


SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL';


SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner ASC;


SELECT winner, subject
FROM nobel
WHERE yr=2015
ORDER BY subject IN('Physics', 'Chemistry'), subject, winner;


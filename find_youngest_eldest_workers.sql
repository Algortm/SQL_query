
SELECT * FROM worker WHERE birthday = (SELECT MIN(birthday) FROM worker)
UNION
SELECT * FROM worker WHERE birthday = (SELECT MAX(birthday) FROM worker)

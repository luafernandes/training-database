-- Exercise 01: a list of the students' professions and their respective numbers
SELECT profissao, COUNT(*) AS quantidade FROM gafanhotos
GROUP BY profissao;

-- Exercise 02: how many male students and how many female students were born after 2005-01-01
SELECT sexo, COUNT(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

-- Exercise 03: a list of students who were born outside Brazil, showing the country of origin and the total number of people born there. Only countries with more than 3 students with that nationality are interested.
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING COUNT(nacionalidade) > 3;

-- Exercise 04: A list grouped by student height, showing how many people weigh more than 100kg and are above the average height of all registered students
SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;
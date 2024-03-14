-- TEMA DA AULA: Manipulando Linhas (registros ou tuplas) (UPDATE, DELETE e TRUNCATE)

-- Visualizando a tabela
SELECT * FROM assinantes;
SELECT * FROM cursos;

-- Incluindo os registros da tabela cursos
INSERT INTO cursos VALUES
	('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
	('2','Algoritimos','Logica de Programação','20','8','2014'),
	('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
	('4','PGP','PHP para Iniciantes','33','40','2010'),
	('5','Jarva','Intro ao Java','22','10','2000'),
	('6','MySQL','Curso MySQL','21','15','2016'),
	('7','World','Word Completo','40','30','2018'),
	('8','Sapateado','Dança Rítimica','14','30','2018'),
	('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
	('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');
    
-- Modificando uma linha
UPDATE cursos -- Modifique
SET nome = 'HTML5' -- Configurando
WHERE id_curso = '1'; -- Onde

UPDATE cursos
SET nome = 'PHP', ano = '2015', carga = '40', totaulas = '20'
WHERE id_curso = '4';

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015', totaulas = '29'
WHERE id_curso = '5'
LIMIT 1; -- limita a quantidade de linhas que será afetada (em ordem de aparição)

UPDATE cursos
SET nome = 'Algoritmos', totaulas = '15'
WHERE id_curso = '2';

UPDATE cursos
SET nome = 'Word', ano = '2016'
WHERE id_curso = '7';

UPDATE cursos
SET carga = '10', totaulas = '8'
WHERE id_curso = '3';

UPDATE cursos
SET carga = '30', totaulas = '15'
WHERE id_curso = '6';

UPDATE cursos
SET ano = '2018'
WHERE id_curso = '10';

-- Excluindo linhas
DELETE FROM cursos
WHERE id_curso = '8';

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 2;

-- Excluindo TODOS os registros de uma tabela
TRUNCATE cursos;
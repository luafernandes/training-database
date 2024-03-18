-- TEMA AULA: Gerenciando Cópias de Segurança MySQL

SELECT * FROM cursos;
SELECT * FROM assinantes;
DESCRIBE assinantes;
DESC cursos;

-- Colocando novamente os valores na tabela cursos
INSERT INTO cursos VALUES
	('1', 'HTML5', 'Curso de HTML5', '40', '37', '2014'),
	('2','Algoritmos','Logica de Programação','20','15','2014'),
	('3','Photoshop','Aulas de Photoshop CC','10','8','2014'),
	('4','PHP','PHP para Iniciantes','40','20','2015'),
	('5','Java','Intro ao Java','40','29','2015'),
	('6','MySQL','Curso MySQL','30','15','2016'),
	('7','Word','Word Completo','40','30','2016');

/* Fazendo backup no MySQL:
Backup do banco de dados é chamado de DUMP
Server > Data Export > Selecionar o BD > Selecionar as tabelas > Escolher qual DUMP você deseja
Lembre-se de selecionar Include Create Schema, assim os comandos de criação serão exportados também */

DROP DATABASE cadastro;

/* Importando um backup para o seu servidor:
Server > Data Import > Selecionar a pasta ou arquivo do DUMP > START IMPORT */

USE cadastro;
SHOW TABLES; -- nos mostra as tabelas do banco de dados ativo
DESC cursos;
DESC assinantes;
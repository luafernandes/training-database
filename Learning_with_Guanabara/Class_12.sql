-- TEMA DA AULA: INNER JOIN com várias tabelas

-- Criando uma terceira tabela que se relaciona com outras duas
CREATE TABLE g_assiste_c (
	id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY (id),
	FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
    ) DEFAULT CHARSET = utf8mb4;
    
-- Inserindo os registros
INSERT INTO g_assiste_c VALUES
(DEFAULT, '2014-03-01', '1', '2');

-- Junções
SELECT g.nome AS aluno, c.nome curso FROM gafanhotos g
JOIN g_assiste_c a
ON g.id = a.idgafanhoto
JOIN cursos c
ON c.idcurso = a.idcurso
ORDER BY g.nome;
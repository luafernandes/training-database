-- TEMA DA AULA: Criando o primeiro Banco de Dados

-- Criando o banco de dados
CREATE DATABASE cadastro;

-- Ativando o banco de dados que irei usar
USE cadastro;

-- Criando as tabelas
CREATE TABLE pessoas(
	nome VARCHAR(40),
    idade TINYINT(3),
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);

-- Visualizando a estrutura da tabela 
DESCRIBE pessoas;
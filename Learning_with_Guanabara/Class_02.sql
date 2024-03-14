-- TEMA DA AULA: Melhorando a estrutura do Banco de Dados

-- Excluindo um banco de dados
DROP DATABASE cadastro;

/* Recriando o banco de dados de forma melhorada
com definição dos caracteres com suporte à acentuação */
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_ai_ci;

-- Otimizando a estrutura da tabela
CREATE TABLE pessoas(
	id_pessoa INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL, -- not null obriga a preencher esse dado
    nascimento DATE,
    sexo ENUM('M', 'F'), 
    peso DECIMAL(5,2), -- (total de casas, qnt números após a vírgula)
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil', -- se não preencher nada, será preenchido com Brasil
	PRIMARY KEY (id_pessoa)
)DEFAULT CHARSET = utf8mb4;
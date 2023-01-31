--CRIANDO A TABELA ESTADO
CREATE TABLE ESTADOS(
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(45) NOT NULL,
    SIGLA VARCHAR(2) NOT NULL,
    REGIAO ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL,
    POPULACAO DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (ID),
    UNIQUE KEY (NOME),
    UNIQUE KEY (SIGLA)
);
--Ou seja para colocar valores dentro dessa região tem que ser um desse valores pré definido.
--UNSIGNED quer dizer que não aceita sinal. 
--NOT NULL o valor não pode ser nulo..
--AUTO_INCREMENT ele se auto incrementa (Depende do Banco).
--DECIMAL(5,2) --> DECIMAL(quantos digitos, quantas casas após a virgula).
--UNIQUE KEY(coluna) para que não haja duplicidade com a coluna que vai estar dentro dos parenteses.
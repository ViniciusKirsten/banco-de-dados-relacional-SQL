INSERT INTO EMPRESAS
    (NOME, CNPJ)
VALUES
    ('Bradesco', 97066991000147),
    ('Vale', 61726297000161),
    ('Cielo', 81282015000191);

ALTER TABLE EMPRESAS MODIFY CNPJ VARCHAR(14);
--Modificando dados já criados de uma tabela

SELECT * FROM EMPRESAS

DESC EMPRESAS;
--DESC : Descrevendo a caracteristicas de uma tabela

INSERT INTO EMPRESAS_UNIDADES
    (EMPRESA_ID, CIDADE_ID, SEDE)
VALUES
    (1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);
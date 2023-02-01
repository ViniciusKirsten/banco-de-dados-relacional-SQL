SELECT * FROM ESTADOS 

INSERT INTO CIDADE (NOME, AREA, ESTADO_ID)
VALUES("Campinas", 795, 28)

SELECT * FROM CIDADE
--Verificando toda tabela "CIDADE"

DELETE FROM CIDADE
WHERE ID = 2 
--Deletando uma cidade criada

INSERT INTO CIDADE (NOME, AREA, ESTADO_ID)
VALUES("Niterói", 133.9, 22)

INSERT INTO CIDADE(NOME, AREA, ESTADO_ID)
VALUES ("Caruaru", 920.6, (SELECT ID FROM ESTADOS WHERE SIGLA = "PE"))
/*
 * Dessa forma eu não preciso procurar manualmente na tabela e colocar o id
 * correto, eu simplesmente busco ele na tabela e adiciono automaticamente
 */

 INSERT INTO CIDADE(NOME, AREA, ESTADO_ID)
VALUES ("Juaseiro do Norte", 248.2, (SELECT ID FROM ESTADOS WHERE SIGLA = "CE"))
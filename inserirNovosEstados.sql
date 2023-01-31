INSERT INTO ESTADOS (ID, NOME, SIGLA, REGIAO, POPULACAO)
VALUES(1000, 'Novo', 'NV', 'Sul', 2.54)

SELECT * FROM ESTADOS

INSERT INTO ESTADOS (NOME, SIGLA, REGIAO, POPULACAO)
VALUES ('Mais Novo', 'MV', 'Norte', 2.51)

/*
 * Auto incremento do ID
 * 
 * Mesmo colocando um ID que você mesmo criou sem ser o ID que estava incrementando.
 * EX: ID = 30 porém você incremento o ID= 1000.
 * próximo ID que sera incrementado vai ser 1001 e não 31, pois ele continua a partir
 * do ultimo ID incrementado.
*/
UPDATE ESTADOS
SET NOME = "Maranhão"
WHERE SIGLA = 'MA'
/*
 * Aqui o where tem um papel importante, se atualizar os dados sem ele 
 * você atualiza todos os dados da coluna. Nesse caso podemos restringir
 * somente pela sigla do estado pois nenhum estado se repete 
*/

SELECT NOME FROM ESTADOS 
WHERE SIGLA = 'MA'
--Consultando para saber se o valor foi mesmo modificado

SELECT `NOME` FROM ESTADOS 
WHERE SIGLA = 'MA'
--posso usar esse tipo de aspas onde eu quiser, para fazer a consulta

SELECT ESTADOS.NOME FROM ESTADOS 
WHERE SIGLA = 'MA'
-- buscando o nome com o "estados" na frente, porém isso jaá fica subentendido pela linguagem

SELECT EST.`NOME` FROM ESTADOS EST
WHERE SIGLA = 'MA'
-- Colocando apelido e podendo usar mais na frente

UPDATE ESTADOS
SET NOME = 'Paraná',
    POPULACAO = 11.32
WHERE SIGLA = 'PR'
--atualizando duas colunas ao mesmo tempo

SELECT NOME, SIGLA, POPULACAO FROM ESTADOS
WHERE SIGLA = 'PR'
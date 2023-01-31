SELECT * FROM ESTADOS
-- '*' quer dizer que é todas as colunas

SELECT SIGLA, NOME FROM ESTADOS
-- dizendo de quais colunas eu quero chamar e de qual tabela 

SELECT SIGLA AS 'Sigla estados', NOME AS 'Nome do Estado' FROM ESTADOS
-- mesma consulta porém mudando o nome das colunas

SELECT SIGLA, NOME FROM ESTADOS
WHERE REGIAo = 'Sul'
--filtando para onde a regiao é apenas sul

SELECT SIGLA, NOME FROM ESTADOS
WHERE POPULACAO >= 10
 --filtrando para os estados com populacao maior ou igual a 10

SELECT SIGLA, NOME FROM ESTADOS
WHERE POPULACAO >= 10
ORDER BY POPULACAO
--ordenando de forma crescente

SELECT SIGLA, NOME, POPULACAO FROM ESTADOS
WHERE POPULACAO >= 10
ORDER BY POPULACAO DESC
--ordenando de forma decrescente


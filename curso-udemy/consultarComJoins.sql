SELECT * FROM PREFEITOS;
SELECT * FROM CIDADE;

SELECT * FROM CIDADE C INNER JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
-- vai trazer somente as junções

SELECT * FROM CIDADE C LEFT OUTER JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
SELECT * FROM CIDADE C LEFT JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
-- vai trazer todas as cidades por estar no lado esquerdo (left) e as junções
-- mesma coisa com o OUTER ou sem 

SELECT * FROM CIDADE C RIGHT JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
-- vai trazer a tabela da direita (right) que é a tabela PREFEITO e as junções 

SELECT * FROM CIDADE C FULL JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
-- em alguns bancos de dados existe esse tipo de comando mas no mySQL não

SELECT * FROM CIDADE C LEFT JOIN PREFEITOS P ON C.ID = P.CIDADE_ID
UNION
SELECT * FROM CIDADE C RIGHT JOIN PREFEITOS P ON C.ID = P.CIDADE_ID;
-- Isso seria um equivalente ao FULL JOIN
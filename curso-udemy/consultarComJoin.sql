SELECT * FROM ESTADOS E, CIDADE C
WHERE E.ID = C.ESTADO_ID
-- Sem o where ele faz uma consulta que não faz sentindo 

--São dois modos diferentes um usando o INNER JOIN e outro usando o WHERE, para fazer a mesma consulta

SELECT E.NOME, C.NOME, REGIAO FROM ESTADOS E, CIDADE C
WHERE E.ID = C.ESTADO_ID
/*
 * Se colocar somente NOME vai ser uma consulta ambígua pois
 * existe a coluna nome tanto na CIDADE quanto no ESTADO
*/

SELECT 
    C.NOME AS CIDADE,
    E.NOME AS ESTADO,
    REGIAO AS REGIAO 
FROM ESTADOS E
INNER JOIN CIDADE C ON E.ID = C.ESTADO_ID
/*
 * ON E.ID = C.ESTADO_ID : Vou defenir dentro quais as duas colunas
 * que eu vou usar para fazer essa junção. 
*/


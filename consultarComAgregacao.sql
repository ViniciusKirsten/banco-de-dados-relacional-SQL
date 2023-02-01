SELECT REGIAO AS Região, 
SUM(POPULACAO) AS Total
FROM ESTADOS
GROUP BY REGIAO
ORDER BY Total DESC
/*
 * SELECT : Seleciona REGIAO e coloca o nome  da coluna de "Região".
 *
 * SUM : vai agregar a soma a partir da regiao que foi a coluna que 
 * selecionamos e também vai colocar o nome da coluna como "Total".
 *
 * GROUP BY : vai ser o que vai agrupar os dados por REGIAO e para
 * isso acontecer o REGIAO tem que estar selecionado.
*/

SELECT 
    AVG(POPULACAO) AS TOTAL
FROM ESTADOS

--AVG : Vai somar todos os valores e fazer uma média a partir do número de linhas
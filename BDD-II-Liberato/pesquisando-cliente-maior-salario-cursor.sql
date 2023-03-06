DECLARE --cursor sempre vai estar aqui dentro, de forma aninhada
  CURSOR C_CLI_MAX IS
    SELECT NOME_CLIENTE
    FROM CLIENTE
    WHERE VLR_RENDA IN
            (SELECT MAX(VLR_RENDA) FROM CLIENTE);
    R_CLI_MAX C_CLI_MAX%ROWTYPE; --vai criar um vetor com colunas iguais da tabela, mas vai adicionar somente a linha que é desejada, neste caso somente as informações do Roberto
BEGIN
    OPEN C_CLI_MAX;
    FETCH C_CLI_MAX INTO R_CLI_MAX;
    IF C_CLI_MAX%NOTFOUND THEN
      DBMS_OUTPUT.PUT_LINE('Valor renda não encontrado!');
    END IF;
      DBMS_OUTPUT.PUT_LINE('O cliente com a maior renda é '||R_CLI_MAX.NOME_CLIENTE);
    CLOSE C_CLI_MAX;
END;
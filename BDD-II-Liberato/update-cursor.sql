Declare
	Cursor c_cidade is 
	Select cod_cidade, nome_cidade, uf, pais
	From Cidade Where cod_cidade = 1;
	R_cidade c_cidade % rowtype; -- vai criar semelhante a um vetor pegando todas as informações no SELECT
Begin
	Open c_cidade;
    Fetch c_cidade Int R_cidade;
    DBMS_output.put_line (‘O nome é’ || R_cidade.nome_cidade)
    IF c_cidade%notfound then
        insert into Erro (tabela, mensagem, Data_erro) 
        values (“cidade”, “não encontrou”|| R_cidade.cod_cidade, sysdate );
    End IF;
    Close c_cidade;
End;
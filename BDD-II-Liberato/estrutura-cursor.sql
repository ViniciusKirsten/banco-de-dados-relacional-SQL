Declare -- criando as variáveis do que serão adicionadas no ‘corpo’
	v_nome varchar2(100)
	v_salario number(12,2) := 0; -- :=0 inicializado com zero

Cursor  c_pessoa is   -- criando a estrutura do cursor
	Select nome, vlr_salario
From pessoa
Where idPessoa = 12;
Begin
	Open c_pessoa; -- abre o cursor
	Fetch c_pessoa into v_nome, v_salario; -- fetch → executa o cursor 
      -- into → adicionado o valor
Close c_pessoa; -- fecha o cursor o cursor
end;

Usando IF
Declare -- criando as variáveis do que serão adicionadas no ‘corpo’
	v_nome varchar2(100)
	v_salario number(12,2) := 0; -- :=0 inicializado com zero

Cursor  c_pessoa is   -- criando a estrutura do cursor
	Select nome, vlr_salario
From pessoa
Where idPessoa = 12;
Begin
	Open c_pessoa; --abre o cursor
	Fetch c_pessoa into v_nome, v_salario; --fetch → executa o cursor
      -- into → adicionado o valor
	IF c_pessoa % notFound Then
		dbms_output.put_line(‘Pessoa não encontrada’)
	End IF
Close c_pessoa; -- fecha o cursor o cursor
end;
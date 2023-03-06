Declare
	v_salario number(12,2) := 0;

Cursor  c_pessoa is   
	Select nome, vlr_salario
From pessoa
Where nome = “Joana;
Begin
	Open c_pessoa; 
	Fetch c_pessoa into  v_salario; 
	

IF c_pessoa % notFound Then
		dbms_output.put_line(‘Pessoa não encontrada’)
	End IF
	IF c_pessoa % Too_many_rows Then
        dbms_output.put_line(“Muitos registros”)
End IF
Close c_pessoa;
end;

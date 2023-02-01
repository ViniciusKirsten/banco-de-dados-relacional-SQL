CREATE TABLE IF NOT EXISTS CIDADE(
    ID          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME        VARCHAR(255) NOT NULL,
    ESTADO_ID   INT UNSIGNED NOT NULL,
    AREA        DECIMAL(10,2),
    PRIMARY KEY (ID),
    FOREIGN KEY (ESTADO_ID) REFERENCES ESTADOS(ID)
);
/*
 * IF NOT EXISTS : Caso a tabela já esteja criada ele vai simplesmente
 * ignorar esse comando e não retornar uma mensagem de erro 
 *
 * FOREIGN KEY (ESTADO_ID) : Criando uma chave estrangeira que vai pegar os 
 * dados de outra tabela, que nesse caso vai ser "ESTADOS" da coluna "ID"
 * REFERENCES ESTADO(ID) : Referencia a tabela "ESTADOS" mais expecifico a 
 * coluna "ID"
 */

 CREATE TABLE IF NOT EXISTS TESTE(
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
 );

 /*
  * Dessa forma eu posso no mesmo comando colocar a PRIMARY KEY diretamente 
  * na linha sem precisar dizer qual vai ser.
 */

DROP TABLE IF EXISTS TESTE;
-- DROP : Vai remover a tabela.
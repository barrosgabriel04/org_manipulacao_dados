/* Lógico_1: */

CREATE TABLE projeto (
    id_projeto integer PRIMARY KEY,
    nome_diretorio varchar(80),
    status varchar(50)
);

CREATE TABLE caso_de_uso (
    id_uc integer PRIMARY KEY,
    pacotes varchar(80),
    texto varchar(300),
    nome varchar(80),
    fk_projeto_id_projeto integer
);
 
ALTER TABLE caso_de_uso ADD CONSTRAINT FK_caso_de_uso_2
    FOREIGN KEY (fk_projeto_id_projeto)
    REFERENCES projeto (id_projeto)
    ON DELETE RESTRICT;

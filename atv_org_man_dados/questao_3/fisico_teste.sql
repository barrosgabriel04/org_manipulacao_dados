/* Lógico_1: */

CREATE TABLE Questoes_Gabarito (
    materia varchar(80),
    discipilna_ varchar(80),
    bimestre int,
    id_questao interger,
    id_gabarito interger,
    resposta varchar(80),
    PRIMARY KEY (id_questao, id_gabarito)
);

CREATE TABLE Teste (
    disciplina varchar(80),
    data date,
    num_questao int,
    Id_teste interger PRIMARY KEY
);

CREATE TABLE Tem (
    fk_Questoes_Gabarito_id_questao interger,
    fk_Teste_Id_teste interger
);
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_1
    FOREIGN KEY (fk_Questoes_Gabarito_id_questao, ???)
    REFERENCES Questoes_Gabarito (id_questao, ???)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Teste_Id_teste)
    REFERENCES Teste (Id_teste)
    ON DELETE SET NULL;

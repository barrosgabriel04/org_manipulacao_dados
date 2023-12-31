/* Lógico_3: */

CREATE TABLE Ligacao (
    id_call integer PRIMARY KEY,
    data date,
    tempo_call time,
    hora_call time,
    telefone_discado int,
    fk_Agenda_de_telefone_id_agenda integer
);

CREATE TABLE Agenda_de_telefone (
    numero_telefone int,
    contato varchar(80),
    id_agenda integer PRIMARY KEY
);
 
ALTER TABLE Ligacao ADD CONSTRAINT FK_Ligacao_2
    FOREIGN KEY (fk_Agenda_de_telefone_id_agenda)
    REFERENCES Agenda_de_telefone (id_agenda)
    ON DELETE CASCADE;

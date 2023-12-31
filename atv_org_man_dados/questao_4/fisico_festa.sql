/* Lógico_1: */

CREATE TABLE Aluguel (
    id_tema integer PRIMARY KEY,
    tema varchar(100),
    cor_toalha varchar(100),
    valor float,
    fk_Clientes_id_clientes integer,
    fk_Festa_id_festa integer
);

CREATE TABLE Clientes (
    id_clientes integer PRIMARY KEY,
    nome varchar(150),
    telefone int
);

CREATE TABLE Festa (
    id_festa integer PRIMARY KEY,
    bairro_rua varchar(100),
    complemento varchar(150),
    data date,
    horario_inicio time,
    horario_termino time
);
 
ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_2
    FOREIGN KEY (fk_Clientes_id_clientes)
    REFERENCES Clientes (id_clientes)
    ON DELETE RESTRICT;
 
ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_3
    FOREIGN KEY (fk_Festa_id_festa)
    REFERENCES Festa (id_festa)
    ON DELETE RESTRICT;

/* Lógico_1: */

CREATE TABLE apartamento (
    numero integer PRIMARY KEY,
    morador varchar(100),
    qtd_quartos int,
    ocupacao varchar(25),
    data_pagamento date,
    valor_pagamento float,
    despesas_especificas float,
    fk_condominio_id_condominio integer,
    fk_propietario_id_propietario integer
);

CREATE TABLE condominio (
    id_condominio integer PRIMARY KEY,
    valor float,
    valor_despesas float,
    referencial date
);

CREATE TABLE propietario (
    id_propietario integer PRIMARY KEY,
    nome varchar(100),
    telefone Nchar(12),
    qtd_apto int
);
 
ALTER TABLE apartamento ADD CONSTRAINT FK_apartamento_2
    FOREIGN KEY (fk_condominio_id_condominio)
    REFERENCES condominio (id_condominio)
    ON DELETE RESTRICT;
 
ALTER TABLE apartamento ADD CONSTRAINT FK_apartamento_3
    FOREIGN KEY (fk_propietario_id_propietario)
    REFERENCES propietario (id_propietario)
    ON DELETE RESTRICT;

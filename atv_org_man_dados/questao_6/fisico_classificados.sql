/* Lógico_1: */

CREATE TABLE classificados (
    id_anuncio integer PRIMARY KEY,
    produto varchar(50),
    titulo varchar(50),
    valor_produto float,
    nome_contato varchar(100),
    telefone Nchar(12),
    obs varchar(30)
);

CREATE TABLE simples (
    id_simples integer PRIMARY KEY,
    valor_anuncio float,
    quantidade_palavras int
);

CREATE TABLE destaque (
    id_destaque integer PRIMARY KEY,
    valor_anuncio int,
    quantidade_palavras int
);

CREATE TABLE faz_2 (
    fk_destaque_id_destaque integer,
    fk_classificados_id_anuncio integer
);

CREATE TABLE Relacionamento_1 (
    fk_simples_id_simples integer,
    fk_classificados_id_anuncio integer
);
 
ALTER TABLE faz_2 ADD CONSTRAINT FK_faz_2_1
    FOREIGN KEY (fk_destaque_id_destaque)
    REFERENCES destaque (id_destaque)
    ON DELETE SET NULL;
 
ALTER TABLE faz_2 ADD CONSTRAINT FK_faz_2_2
    FOREIGN KEY (fk_classificados_id_anuncio)
    REFERENCES classificados (id_anuncio)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_1 ADD CONSTRAINT FK_Relacionamento_1_1
    FOREIGN KEY (fk_simples_id_simples)
    REFERENCES simples (id_simples)
    ON DELETE SET NULL;
 
ALTER TABLE Relacionamento_1 ADD CONSTRAINT FK_Relacionamento_1_2
    FOREIGN KEY (fk_classificados_id_anuncio)
    REFERENCES classificados (id_anuncio)
    ON DELETE SET NULL;

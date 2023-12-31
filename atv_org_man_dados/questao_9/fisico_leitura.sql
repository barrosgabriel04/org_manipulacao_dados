/* Lógico_2: */

CREATE TABLE revista (
    id_revista integer PRIMARY KEY,
    colecao varchar(100),
    edicao int,
    ano int,
    fk_caixa_numero int
);

CREATE TABLE colegas (
    id_colega integer PRIMARY KEY,
    nome varchar(100),
    mae varchar(100),
    telefone Nchar(12),
    de_onde_ varchar(100),
    fk_emprestimo_id_emprestimo integer
);

CREATE TABLE caixa (
    numero int PRIMARY KEY,
    etiqueta varchar(50),
    cor varchar(50)
);

CREATE TABLE emprestimo (
    id_emprestimo integer PRIMARY KEY,
    titulo_revista varchar(100),
    data_emprestimo date,
    data_devolucao date,
    nome_colega varchar(100),
    fk_revista_id_revista integer
);
 
ALTER TABLE revista ADD CONSTRAINT FK_revista_2
    FOREIGN KEY (fk_caixa_numero)
    REFERENCES caixa (numero)
    ON DELETE CASCADE;
 
ALTER TABLE colegas ADD CONSTRAINT FK_colegas_2
    FOREIGN KEY (fk_emprestimo_id_emprestimo)
    REFERENCES emprestimo (id_emprestimo)
    ON DELETE CASCADE;
 
ALTER TABLE emprestimo ADD CONSTRAINT FK_emprestimo_2
    FOREIGN KEY (fk_revista_id_revista)
    REFERENCES revista (id_revista)
    ON DELETE CASCADE;

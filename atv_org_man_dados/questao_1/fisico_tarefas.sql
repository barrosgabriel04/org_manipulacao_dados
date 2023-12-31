/* Lógico_2: */

CREATE TABLE Tarefa (
    prioridade real,
    nome_tarefa varchar/200,
    data_limite date,
    porcentagem_concluido decimal,
    detalhamento varchar/200,
    id_tarefa integer PRIMARY KEY
);

CREATE TABLE Item_de_execucao (
    id_execucao integer PRIMARY KEY,
    percentual decimal,
    data_execucao date,
    descricao_execucao varchar/200,
    fk_Tarefa_id_tarefa integer
);

CREATE TABLE Tarefa_concluida (
    id_concluido integer PRIMARY KEY,
    prioridade real,
    nome_tarefa varchar/200,
    percentual_concluido decimal,
    detalhamento varchar/200,
    data_limite date,
    fk_Item_de_execucao_id_execucao integer
);
 
ALTER TABLE Item_de_execucao ADD CONSTRAINT FK_Item_de_execucao_2
    FOREIGN KEY (fk_Tarefa_id_tarefa)
    REFERENCES Tarefa (id_tarefa)
    ON DELETE SET NULL;
 
ALTER TABLE Tarefa_concluida ADD CONSTRAINT FK_Tarefa_concluida_2
    FOREIGN KEY (fk_Item_de_execucao_id_execucao)
    REFERENCES Item_de_execucao (id_execucao)
    ON DELETE SET NULL;

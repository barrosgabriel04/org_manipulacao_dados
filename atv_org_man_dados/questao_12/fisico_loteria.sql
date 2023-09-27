/* Lógico_1: */

CREATE TABLE apostas (
    id_aposta integer PRIMARY KEY,
    qual_jogo varchar(50),
    numeros_jogados varchar(150)
);

CREATE TABLE resultado_concurso (
    id_resultados integer PRIMARY KEY,
    numeros_sorteados varchar(150)
);

CREATE TABLE Relatorio (
    id_relatorio integer PRIMARY KEY,
    numeros_acertados varchar(150),
    premiacao float,
    fk_apostas_id_aposta integer,
    fk_resultado_concurso_id_resultados integer
);
 
ALTER TABLE Relatorio ADD CONSTRAINT FK_Relatorio_2
    FOREIGN KEY (fk_apostas_id_aposta)
    REFERENCES apostas (id_aposta)
    ON DELETE CASCADE;
 
ALTER TABLE Relatorio ADD CONSTRAINT FK_Relatorio_3
    FOREIGN KEY (fk_resultado_concurso_id_resultados)
    REFERENCES resultado_concurso (id_resultados)
    ON DELETE CASCADE;

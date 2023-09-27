/* Lógico_1: */

CREATE TABLE curso (
    id_curso integer PRIMARY KEY,
    cursos varchar(100),
    data_inicio_termino date,
    horario_inicio_termino time,
    carga_horaria time,
    valor float,
    conteudo varchar(250)
);

CREATE TABLE professor (
    id_prof integer PRIMARY KEY,
    nome_prof varchar(100),
    telefone_prof int,
    valor_hora int
);

CREATE TABLE matricula (
    rgm integer PRIMARY KEY,
    data_matricula date,
    valor_pago float,
    fk_curso_id_curso integer,
    fk_aluno_id_aluno integer
);

CREATE TABLE aluno (
    id_aluno integer PRIMARY KEY,
    nome_aluno varchar(100),
    rg int,
    cpf int,
    nascimento date,
    endereco varchar(250),
    telefone int
);

CREATE TABLE tem (
    fk_professor_id_prof integer,
    fk_curso_id_curso integer
);
 
ALTER TABLE matricula ADD CONSTRAINT FK_matricula_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE matricula ADD CONSTRAINT FK_matricula_3
    FOREIGN KEY (fk_aluno_id_aluno)
    REFERENCES aluno (id_aluno)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_1
    FOREIGN KEY (fk_professor_id_prof)
    REFERENCES professor (id_prof)
    ON DELETE RESTRICT;
 
ALTER TABLE tem ADD CONSTRAINT FK_tem_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;

/* Lógico_1: */

CREATE TABLE agendamento (
    id_agendamento integer PRIMARY KEY,
    data date,
    tipo_consulta varchar(100),
    horario time,
    paciente varchar(150),
    local_consulta varchar(50),
    fk_paciente_id_paciente integer
);

CREATE TABLE paciente (
    id_paciente integer PRIMARY KEY,
    nome varchar(150),
    endereco varchar(250),
    telefone Nchar(12),
    data_nascimento date,
    fk_pagamento_ou_plano_id_pagamento integer
);

CREATE TABLE pagamento_ou_plano (
    id_pagamento integer PRIMARY KEY,
    particular_ou_plano varchar(15),
    qual_plano varchar(50),
    limite_consultas_planos_mensal int
);
 
ALTER TABLE agendamento ADD CONSTRAINT FK_agendamento_2
    FOREIGN KEY (fk_paciente_id_paciente)
    REFERENCES paciente (id_paciente)
    ON DELETE RESTRICT;
 
ALTER TABLE paciente ADD CONSTRAINT FK_paciente_2
    FOREIGN KEY (fk_pagamento_ou_plano_id_pagamento)
    REFERENCES pagamento_ou_plano (id_pagamento)
    ON DELETE RESTRICT;

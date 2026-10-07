-- ATIVIDADE 6 - MANIPULAÇÃO DE REGISTROS DE BANCO DE DADOS
-- Clínica Médica - Vida Saudável
-- Aluno: Lucca Dultra

USE clinica_medica_db;

-- 1º PASSO - INSERÇÃO DE REGISTROS

-- A) Médicos
INSERT INTO medicos (nome, especialidade, crm, telefone, email)
VALUES
('Carlos Andrade', 'Cardiologia', 'SP123456', '(14) 99123-4567', 'carlos.andrade@vidasaudavel.com'),
('Sofia Almeida', 'Dermatologia', 'SP654321', '(14) 99765-4321', 'sofia.almeida@vidasaudavel.com'),
('Fernando Batista', 'Ortopedia', 'SP789123', '(14) 98877-6655', 'fernando.batista@vidasaudavel.com');

SELECT * FROM medicos;

-- B) Pacientes
INSERT INTO pacientes
(nome, cpf, data_nascimento, rua, numero, cidade, cep, telefone, email)
VALUES
('Ana Oliveira', '111.222.333-44', '1985-05-20', 'Rua das Flores', 123, 'Botucatu', '18600-000', '(14) 99888-7777', 'ana.oliveira@email.com'),
('Lucas Martins', '444.555.666-77', '1992-11-30', 'Avenida Principal', 456, 'Botucatu', '18602-123', '(14) 99777-6666', 'lucas.martins@email.com'),
('Ricardo Mendes', '777.888.999-00', '1978-02-10', 'Travessa da Paz', 78, 'Botucatu', '18605-456', '(14) 99666-5555', 'ricardo.mendes@email.com');

SELECT * FROM pacientes;

-- C) Agendamentos
INSERT INTO agendamentos
(medico_id, paciente_id, data_hora, sala, valor, observacoes)
VALUES
(1, 1, '2025-10-20 09:00:00', 'Sala 101', 350.00, 'Paciente relata dor no peito.'),
(2, 3, '2025-10-22 14:30:00', 'Sala 205', 400.00, 'Verificar manchas na pele.'),
(3, 2, '2025-10-25 11:00:00', 'Sala 302', 300.00, NULL);

SELECT * FROM agendamentos;

-- 2º PASSO - ATUALIZAÇÃO DE REGISTROS

-- A) Atualizar telefone do Dr. Carlos Andrade
UPDATE medicos
SET telefone = '(14) 99100-2030'
WHERE id = 1;

SELECT * FROM medicos;

-- B) Atualizar endereço da paciente Ana Oliveira
UPDATE pacientes
SET rua = 'Avenida Vital Brasil',
    numero = 789,
    cep = '18603-190'
WHERE id = 1;

SELECT * FROM pacientes;

-- 3º PASSO - EXCLUSÃO DE REGISTROS

-- A) Excluir primeiro o agendamento do Ricardo Mendes
DELETE FROM agendamentos
WHERE medico_id = 2
  AND paciente_id = 3;

SELECT * FROM agendamentos;

-- B) Depois excluir o paciente Ricardo Mendes
DELETE FROM pacientes
WHERE id = 3;

SELECT * FROM pacientes;

-- FIM DA ATIVIDADE 6

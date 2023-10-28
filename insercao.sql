
-- Inserção de dados de exemplo na tabela Veiculos
INSERT INTO Veiculos (veiculo_id, nome)
VALUES
    (101, 'Veículo 1'),
    (102, 'Veículo 2');

-- Inserção de dados de exemplo na tabela Rotas
INSERT INTO Rotas (rota_id, origem, destino)
VALUES
    (201, 'Hospital A', 'Clinica X'),
    (202, 'Clinica Y', 'Hospital B'),
    (203, 'Hospital C', 'Hospital D'),
    (204, 'Clinica Z', 'Hospital E'),
    (205, 'Clinica P', 'Hospital F');

-- Inserção de dados de exemplo na tabela Pacientes
INSERT INTO Pacientes (paciente_id, nome, data_transporte, veiculo_id, rota_id)
VALUES
    (1, 'Paciente A', '2023-10-10', 101, 201),
    (2, 'Paciente B', '2023-10-12', 102, 202),
    (3, 'Paciente C', '2023-11-15', 101, 203),
    (4, 'Paciente D', '2023-11-18', 102, 204),
    (5, 'Paciente E', '2023-12-20', 101, 205);

INSERT INTO Detalhes_Transporte (detalhe_id, paciente_id, veiculo_id, rota_id, data_transporte)
VALUES
    (301, 1, 101, 201, '2023-10-10'),
    (302, 2, 102, 202, '2023-10-12'),
    (303, 3, 101, 203, '2023-11-15'),
    (304, 4, 102, 204, '2023-11-18'),
    (305, 5, 101, 205, '2023-12-20');
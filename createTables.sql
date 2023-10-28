CREATE DATABASE IF NOT EXISTS basededados;
USE basededados;

-- Tabela de Veículos
CREATE TABLE Veiculos (
    veiculo_id INT PRIMARY KEY,
    nome VARCHAR(50)
);

-- Tabela de Rotas de Transporte
CREATE TABLE Rotas (
    rota_id INT PRIMARY KEY,
    origem VARCHAR(100),
    destino VARCHAR(100)
);

-- Tabela de Pacientes
CREATE TABLE Pacientes (
    paciente_id INT PRIMARY KEY,
    nome VARCHAR(50),
    data_transporte DATE,
    veiculo_id INT,
    rota_id INT,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculos(veiculo_id),
    FOREIGN KEY (rota_id) REFERENCES Rotas(rota_id)
);

-- Tabela de Detalhes de Transporte (que rastreia as associações entre pacientes, veículos e rotas)
CREATE TABLE Detalhes_Transporte (
    detalhe_id INT PRIMARY KEY,
    paciente_id INT,
    veiculo_id INT,
    rota_id INT,
    data_transporte DATE,
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (veiculo_id) REFERENCES Veiculos(veiculo_id),
    FOREIGN KEY (rota_id) REFERENCES Rotas(rota_id)
);

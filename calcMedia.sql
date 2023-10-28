SELECT
    YEAR(data_transporte) AS ano,
    MONTH(data_transporte) AS mes,
    Veiculos.veiculo_id,
    Veiculos.nome AS nome_veiculo,
    COUNT(Pacientes.paciente_id) AS pacientes_transportados,
    COUNT(Pacientes.paciente_id) / COUNT(DISTINCT MONTH(data_transporte)) AS media_pacientes_por_mes
FROM
    Pacientes
INNER JOIN Veiculos ON Pacientes.veiculo_id = Veiculos.veiculo_id
GROUP BY
    YEAR(data_transporte), MONTH(data_transporte), Veiculos.veiculo_id, Veiculos.nome
ORDER BY
    ano, mes, Veiculos.veiculo_id;

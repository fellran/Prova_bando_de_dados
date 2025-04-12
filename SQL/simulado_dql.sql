-- Seleciona o nome do aluno e o nome da sua escolaridade
SELECT
    tb_aluno.nome AS nome_aluno,
    tb_escolaridade.nome AS nome_escolaridade
FROM
    tb_aluno
INNER JOIN
    tb_escolaridade ON tb_aluno.id_escolaridade = tb_escolaridade.id;
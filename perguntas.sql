-- Saber quem são os alunos que entregaram o projeto do módulo 1 e estão com o conceito em “Pronto” ou “Mais que pronto"
select nome, conceito from entregas
inner join alunos on alunos.cpf = entregas.cpf
where conceito = 'Pronto' or conceito = 'Mais que pronto' and modulo_projeto = '1';

-- COnsultar quantos alunos temos em cada turma:
select count(cpf) as qtd_alunos, turmas.nome_turma from alunos
inner join turmas on alunos.id_turma = turmas.id_turma
group by nome_turma;

-- Quantos projetos no total (entre todas as turmas) foram entregues com conceito “Ainda não está pronto” e “Chegando lá“
select count(conceito) as total_conceitos_ruins from entregas
where entregas.conceito = 'Ainda não está pronto' or entregas.conceito = 'Chegando lá';

-- Qual a turma com a maior quantidade de projetos no “Mais que pronto”
 SELECT id_turma, COUNT(conceito) AS maior_nota
 FROM alunos
 INNER JOIN entregas ON alunos.cpf = entregas.cpf
 WHERE conceito = 'mais que pronto'
 GROUP BY id_turma
 ORDER BY maior_nota DESC limit 1 ;
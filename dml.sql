USE atendimento_chamados;

INSERT INTO usuario
(id_usuario, nome, email, telefone, departamento, cargo, status)
VALUES
(1, 'Gabriel Ferreira', 'gabriel.ferreira@email.com', '11984561234', 'Financeiro', 'Assistente', 'Ativo'),
(2, 'Larissa Almeida', 'larissa.almeida@email.com', '11993456781', 'Recursos Humanos', 'Analista', 'Ativo'),
(3, 'Bruno Carvalho', 'bruno.carvalho@email.com', '11992345678', 'Marketing', 'Supervisor', 'Ativo'),
(4, 'Camila Rodrigues', 'camila.rodrigues@email.com', '11991234567', 'Administrativo', 'Coordenadora', 'Ativo'),
(5, 'Matheus Gomes', 'matheus.gomes@email.com', '11990123456', 'Comercial', 'Vendedor', 'Inativo');

INSERT INTO tecnico
(id_tecnico, nome, email, especialidade, status)
VALUES
(1, 'Felipe Martins', 'felipe.martins@empresa.com', 'Hardware', 'Ativo'),
(2, 'Amanda Ribeiro', 'amanda.ribeiro@empresa.com', 'Software', 'Ativo'),
(3, 'Ricardo Nunes', 'ricardo.nunes@empresa.com', 'Redes', 'Ativo'),
(4, 'Patrícia Souza', 'patricia.souza@empresa.com', 'Segurança', 'Ativo'),
(5, 'Diego Moraes', 'diego.moraes@empresa.com', 'Banco de Dados', 'Inativo');

INSERT INTO categoria
(id_categoria, nome, descricao)
VALUES
(1, 'Hardware', 'Falhas em computadores e equipamentos'),
(2, 'Software', 'Problemas em programas e aplicações'),
(3, 'Rede', 'Falhas de conexão e internet'),
(4, 'Acesso', 'Problemas relacionados a login e permissões'),
(5, 'Segurança', 'Incidentes relacionados à segurança da informação');

INSERT INTO chamado
(id_chamado, titulo, descricao, data_abertura, data_fechamento, status, prioridade, id_usuario, id_categoria, id_tecnico)
VALUES
(1, 'Monitor sem imagem', 'O monitor do setor financeiro não exibe imagem.', '2026-09-14 08:10:00', '2026-09-14 10:20:00', 'Fechado', 'Alta', 1, 1, 1),
(2, 'Erro ao abrir sistema', 'O sistema de gestão apresenta erro durante o login.', '2026-09-15 09:40:00', NULL, 'Em andamento', 'Média', 2, 2, 2),
(3, 'Internet oscilando', 'A conexão da empresa apresenta quedas constantes.', '2026-09-16 11:15:00', '2026-09-16 15:00:00', 'Fechado', 'Alta', 3, 3, 3),
(4, 'Acesso bloqueado', 'Funcionário não consegue acessar o portal interno.', '2026-09-17 14:30:00', NULL, 'Aberto', 'Média', 4, 4, 4),
(5, 'Notebook muito lento', 'O notebook demora para iniciar e abrir programas.', '2026-09-18 16:20:00', NULL, 'Em andamento', 'Baixa', 5, 1, 1);

INSERT INTO historico
(id_historico, id_chamado, id_usuario, data_hora, descricao, tipo)
VALUES
(1, 1, 1, '2026-09-14 08:30:00', 'Chamado registrado e enviado para análise técnica.', 'Atualização'),
(2, 1, 1, '2026-09-14 09:40:00', 'Foi identificado defeito no cabo de vídeo.', 'Diagnóstico'),
(3, 1, 1, '2026-09-14 10:20:00', 'Cabo substituído e equipamento funcionando normalmente.', 'Solução'),
(4, 2, 2, '2026-09-15 10:00:00', 'Equipe iniciou a verificação do sistema.', 'Atualização'),
(5, 3, 3, '2026-09-16 15:00:00', 'Configuração da rede ajustada e conexão estabilizada.', 'Solução');
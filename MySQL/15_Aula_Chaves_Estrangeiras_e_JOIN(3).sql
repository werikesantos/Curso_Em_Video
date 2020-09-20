# JUNÇÃO OU 'JOIN' - RELACIONAMENTO DE 1:N

SELECT * FROM gafanhotos; # ESTOU SELECIONANDO ALGUMAS COLUNAS PARA FAZER A JUNÇÃO DELAS (nome, cursopreferido).
SELECT * FROM cursos; # ESTOU SELECIONANDO ALGUMAS COLUNAS PARA FAZER A JUNÇÃO DELAS (nome, ano).

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos JOIN cursos; # ESTA FAZENDO UMA JUNÇÃO DE TABELAS
# VEJA QUE CADA PESSOA CARREGA TODOS OS CURSOS.

# PARA RESOLVER ISSO É NECESSÁRIO LIGAR AS TABELAS COM AS SUAS CHAVES PRIMÁRIAS, E PARA ISSO SE USA O 'ON' QUE FAZ ESSA LIGAÇÃO DE CHAVES PRIMÁRIAS.
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido; # AQUI É FEITA A JUNÇÃO DAS TABELAS PELAS CHAVES PRIMÁRIAS, UTILIZANDO O 'ON'.

# ESTOU TIRANDO SOMENTE O CURSO PREFERIDO DA CONSULTA POIS JÁ ESTA MOSTRANDO O NOME DO CURSO.
SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos INNER JOIN cursos # POSSO USAR 'INNER JOIN' OU 'JOIN' QUE O RESULTADO SERÁ O MESMO.
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

# USANDO APELIDOS 
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g INNER JOIN cursos AS c # PARA COLOCAR UM APELIDA SE UTILIZA SOMENTE UMA LETRA NA FRENTE OU COLOCA O 'AS' ANTES DA LETRA
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;
# ATENÇÃO!!! VEJA QUE O RESULTADO DESSA CONSULTA OU RESULT SET, MOSTRA SOMENTE A RELAÇÃO DAS TABELAS. SE TIVER CAMPOS VAZIOS PARA CURSOPREFERIDO NÃO RETORNA ESSES CAMPOS.

# PARA RESOLVER ISSO USAMOS O 'LEFT OUTER JOIN' OU 'RIGHT OUTER JOIN'
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g LEFT OUTER JOIN cursos AS c # O 'LEFT OUTER JOIN' DA PREFERENCIA PARA A TABELA DA ESQUERDA QUE NO CASO É A TABELA 'gafanhotos'
ON c.idcurso = g.cursopreferido; 
# VEJA QUE O COMANDO RETORNOU TODOS OS ALUNOS QUE TÊM OU NÃO UM CURSO PREFERIDO!!!

SELECT g.nome, c.nome, c.ano 
FROM gafanhotos AS g RIGHT OUTER JOIN cursos AS c # O 'RIGHT OUTER JOIN' DA PREFERENCIA PARA A TABELA DA DIREITA QUE NO CASO É A TABELA 'cursos'
ON c.idcurso = g.cursopreferido; 
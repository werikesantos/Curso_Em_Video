USE cadastro;

SELECT * FROM cursos;

# O COMANDO ABAIXO SERVE PARA ORDENAR UMA COLUNA DETERMINADA.
SELECT * FROM cursos
ORDER BY nome; # ORDENANDO TUDO PELA COLUNA 'nome' COLOCANDO EM ORDEM ALFABÉTICA
# POR PADRÃO, O COMANDO 'SELECT * FROM cursos' ORDENA TUDO PELA CHAVE PRIMARIA, QUE NO CASO É O 'idcurso'.

# O COMANDO ABAIXO SERVE PARA ORDENAR AS COLUNAS EM ORDEM INVERSA
SELECT * FROM cursos
ORDER BY nome DESC; # O COMANDO 'DESC' SERVE PARA INFORMAR QUE A ORDENAÇÃO SOLICITADA DEVE COMEÇAR DE BAIXO PRA CIMA.

#O COMANDO ABAIXO SERVE PARA CONSULTAR SOMENTE ALGUMAS COLUNAS DE FORMA ORDENADA.
SELECT ano, nome, carga FROM cursos
ORDER BY ano, nome;

# O COMANDO ABAIXO CONSULTA TODOS OS CURSO MINISTRADOS NO ANO DE 2016 DE FORMA ORDENADA PELA COLUNA 'nome'
SELECT * FROM cursos
WHERE ano = '2016'
ORDER BY nome;

# SEGUINDO O MESMO COMANDO ACIMA, SOLICITANDO APENAS DUAS COLUNAS (nome, carga)
SELECT nome, carga FROM cursos
WHERE ano = '2016'
ORDER BY nome;

# O COMANDO ABAIXO GERA UMA QUERY ONDE UMA CONDIÇÃO É DEFINIDA
SELECT ano, nome, descricao FROM cursos
WHERE ano <= '2015' # OPERADORES RELACIONAIS (> MAIOR; < MENOR; >= MAIOR OU IGUAL; <= MENOR OU IGUAL; != DIFERENTE)
ORDER BY ano, nome; # A ORDEM COMEÇA POR ANO PRIMEIRAMENTE. EX:. NO ANO DE 2014 TEVE 3 CURSO E FORAM COLOCADOS EM ORDEM(Algoritmo, HTML5, Photoshop5)

# O COMANDO ABAIXO SERVE PARA MOSTRAR OS CURSOS MINISTRADOS (BETWEEN - ENTRE) 2014 E 2016
SELECT ano, nome FROM cursos
WHERE ano BETWEEN '2014' AND '2016'
ORDER BY ano, nome;

# O COMANDO ABAIXO SERVE PARA GERAR UMA QUERY DE DETERMINADOS ANOS
SELECT nome, ano FROM cursos
WHERE ano IN ('2014','2016') # ELE BUSCA OS DADOS SOMENTE DOS ANOS ESTABELECIDOS
ORDER BY ano, nome;

# O COMANDO ABAIXO MOSTRA COMO UTILIZAR OS OPERADORES LÓGICOS (AND - E)
SELECT nome, carga, totaulas FROM cursos
WHERE carga > '35' AND totaulas < '30'; # BUSCA O RESULTADO !!!SE NA LINHA!!! TIVER AS DUAS CONDIÇÕES ESTABELECIDAS (UMA COISA 'E' OUTRA)

# SEGUINDO O MESMO EXEMPLO ACIMA PORÉM, UTILIZADNO O OPERADOR LÓGICO (OR - OU)
SELECT nome, carga, totaulas FROM cursos
WHERE carga > '35' OR totaulas < '30'; # (UMA COISA 'OU' OUTRA)
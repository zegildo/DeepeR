--DROP TABLE letra_num
--DROP TABLE pairs
/**
CRIA TABELA DE LETRAS DE NUMEROS
**/
CREATE TABLE letra_num(
	letra char(1),
	num int
);

/**
PREENCHE TABELA COM DADOS SINTÉTICOS
**/
INSERT INTO letra_num
	SELECT chr((65 + round(random() * 25))::int) as letra,
	      (floor(random() * 10 + 1)::int) as num
	FROM generate_series(1,10000);


/**
PREENCHE UMA TABELA COM TODAS AS POSSIBILIDADES
*/
CREATE TABLE pairs(
   letra_i char(1),
   letra_j char(1),
   PRIMARY KEY(letra_i, letra_j)
)

/**
INSERT PAIRS
*/
WITH combination AS(
SELECT chr(64 + num.v) as letra
FROM generate_series(1,26) as num(v)
)
INSERT INTO pairs SELECT DISTINCT t1.letra, t2.letra 



/**
Proposta de solução para intersecao
**/
select p.*, (select count(*)
		FROM (
			SELECT v.num FROM letra_num v WHERE letra = p.letra_i
			intersect
			SELECT v.num FROM letra_num v WHERE letra = p.letra_j
			) t) as weigh
from pairs p






